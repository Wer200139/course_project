import 'dart:async';

import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:clokwise/common/utils/vars.dart';
import 'package:clokwise/features/repositories/auth/models/confirm_email_model.dart';
import 'package:clokwise/features/repositories/auth/models/login_model.dart';
import 'package:clokwise/features/repositories/auth/models/sign_up_model.dart';
import 'package:clokwise/features/repositories/auth/requests/create_device_request.dart';
import 'package:clokwise/features/repositories/auth/requests/login_request.dart';
import 'package:clokwise/features/repositories/auth/requests/sign_up_request.dart';
import 'package:clokwise/features/repositories/user/models/user_model.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class AuthRepository implements CwDisposable {
  final _path = '';

  final SecureStorageManager _secureStorageManager;
  final MainNetworkClient _mainNetworkClient;

  const AuthRepository({
    required SecureStorageManager secureStorageManager,
    required MainNetworkClient mainNetworkClient,
  })  : _mainNetworkClient = mainNetworkClient,
        _secureStorageManager = secureStorageManager;

  @override
  FutureOr<void> dispose() {}

  Future<LoginModel> login({required LoginRequest model}) async {
    _secureStorageManager.deleteAuthToken();
    _secureStorageManager.deleteRefreshToken();

    final response = await _mainNetworkClient.client.post(
      'login/',
      data: model.toJson(),
    );

    if (response.statusCode == 401 &&
        (response.data.toString().toLowerCase().contains('email') || response.data.toString().contains('адрес'))) {
      throw Exception('EmailConfirm');
    }


    if (response.statusCode != 200) {
      String responseError = response.data['error'].toString();
      throw Exception(responseError);
    }

    final loginModel = LoginModel.fromJson(response.data);

    await _secureStorageManager.setAuthToken(token: loginModel.access);
    await _secureStorageManager.setRefreshToken(token: loginModel.refresh);

    return loginModel;
  }

  Future<void> logout() async {
    await _secureStorageManager.deleteAuthToken();
    await _secureStorageManager.deleteRefreshToken();
    GlobalVars.currentUserId = 0;
  }

  Future<SignUpModel> signUp({required SignUpRequest model}) async {
    _secureStorageManager.deleteAuthToken();
    _secureStorageManager.deleteRefreshToken();

    final response = await _mainNetworkClient.client.post(
      'sign-up/',
      data: model.phoneNumber != null
          ? model.toJson()
          : {
              'email': model.email,
              'password': model.password,
              'first_name': model.firstName,
              'last_name': model.lastName,
            },
    );

    if (response.statusCode == 400) {
      if ((response.data.toString().toLowerCase().contains('email_needs_to_be'))) {
        throw Exception('EmailConfirm');
      } else {
        throw Exception(response.data);
      }
    }

    final user = SignUpModel.fromJson(response.data);

    return user;
  }

  Future<ConfirmEmailModel> confirmEmail({required String token, required String email}) async {
    _secureStorageManager.deleteRefreshToken();
    _secureStorageManager.deleteAuthToken();

    final response = await _mainNetworkClient.client.post(
      'confirm-email/',
      data: {
        'token': token,
        'email': email,
      },
    );

    final model = ConfirmEmailModel.fromJson(response.data);

    await _secureStorageManager.setAuthToken(token: model.accessToken);
    await _secureStorageManager.setRefreshToken(token: model.refreshToken);

    return model;
  }

  Future<void> resetPasswordRequest({required String email}) async {
    _secureStorageManager.deleteAuthToken();

    final response = await _mainNetworkClient.client.post(
      'request-password-reset/',
      data: {
        'email': email,
      },
    );

    if (response.data.toString().contains('электр')) {
      throw Exception('email');
    }

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> resetPassword({required String email, required String token, required String password}) async {
    final response = await _mainNetworkClient.client.post(
      'reset-password/',
      data: {
        'email': email,
        'token': token,
        'new_password': password,
      },
    );

    if (response.statusCode != 200) {
      throw Exception();
    }
  }

  Future<void> resendCode({required String email}) async {
    final response = await _mainNetworkClient.client.post(
      'resend-confirmation-email/',
      data: {
        'email': email,
      },
    );
  }

  Future<UserModel> checkAuth() async {
    final response = await _mainNetworkClient.client.get('is-authorized/');

    if (response.statusCode == 403) {
      throw Exception();
    }

    final user = UserModel.fromJson(response.data);

    return user;
  }

  Future<dynamic> createDeviceNotification(CreateDeviceRequest request) async {
    final response = await _mainNetworkClient.client.post(
      'notifications/pn/create-device/',
      data: request.toJson(),
    );

    if (response.statusCode == 403) {
      throw Exception();
    }

    return response;
  }
}
