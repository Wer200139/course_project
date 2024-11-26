import 'dart:async';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:dio/dio.dart';

class InterceptorMainClient extends InterceptorsWrapper {
  final _authorization = 'Authorization';
  final _bearer = 'Bearer';
  List<Map<dynamic, dynamic>> failedRequests = [];
  bool isRefreshing = false;

  final SecureStorageManager _secureStorageManager;

  InterceptorMainClient({required SecureStorageManager secureStorageManager}) : _secureStorageManager = secureStorageManager;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final String? token = await _secureStorageManager.getAuthToken();

    if (token != null && token.isNotEmpty) {
      options.headers[_authorization] = '$_bearer $token';
    }

    handler.next(options);
  }

  FutureOr refreshToken(err, ErrorInterceptorHandler handler) async {
    try {

      final token = await _secureStorageManager.getRefreshToken();
      Dio retryDio = Dio(
        BaseOptions(
          baseUrl: 'https://depl1.prod.sold.su/api/',
          method: 'POST',
        ),
      );
      var response = await retryDio.post(
        'token/refresh/',
        data: {
          "refresh": token,
        },
        options: Options(
          headers: {"Content-Type": 'application/json'},
        ),
      );
      var parsedResponse = response.data;
      if (response.statusCode == 401 || response.statusCode == 403) {
        await _secureStorageManager.deleteRefreshToken();
        await _secureStorageManager.deleteAuthToken();
        return false;
      }
      if (response.statusCode == 200) {
        if (parsedResponse['data'] != null && parsedResponse['error'] != 511) {
          await _secureStorageManager.setRefreshToken(token: parsedResponse['data']?['refresh'] ?? "");
          await _secureStorageManager.setAuthToken(token: parsedResponse['data']?['access'] ?? "");

          await retryRequests(parsedResponse['data']?['access']);
        } else {
          isRefreshing = false;
        }
      }
    }
    catch (e) {
      print(e.toString());
    }
  }

  Future retryRequests(token) async {
    Dio retryDio = Dio(
      BaseOptions(
        baseUrl: 'https://depl1.prod.sold.su/api/',
      ),
    );

    for (var i = 0; i < failedRequests.length; i++) {
      RequestOptions requestOptions = failedRequests[i]['err'].requestOptions as RequestOptions;

      // Update headers with the new access token
      requestOptions.headers = {
        'Authorization': 'Bearer $token',
      };

      // Retry the request using the new token
      await retryDio.fetch(requestOptions).then(
        failedRequests[i]['handler'].resolve,
        onError: (error) async {
          failedRequests[i]['handler'].reject(error as DioError);
        },
      );
    }
    // Reset the refreshing state and clear the failed requests queue
    isRefreshing = false;
    failedRequests = [];
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      if ((await _secureStorageManager.getRefreshToken() ?? "").isEmpty) {
        _secureStorageManager.deleteAuthToken();
        _secureStorageManager.deleteRefreshToken();
        return handler.reject(err);
      }
      if (!isRefreshing) {
        isRefreshing = true;
        final refreshTokenResponse = await refreshToken(err, handler);
        if (refreshTokenResponse.isSuccess) {}
        err.requestOptions.headers['Authorization'] = 'Bearer ${await _secureStorageManager.getAuthToken()}';
      } else {
        err = DioException(requestOptions: RequestOptions());
        return handler.next(err);
      }
    } else {
      failedRequests.add({'err': err, 'handler': handler});
    }

    return handler.next(err);
  }
}
