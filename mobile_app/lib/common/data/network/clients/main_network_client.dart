import 'package:clokwise/common/constants/app_urls.dart';
import 'package:clokwise/common/data/network/clients/base_network_client.dart';
import 'package:clokwise/common/data/network/interceptors/interceptor_main_client.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:dio/dio.dart';

class MainNetworkClient extends BaseNetworkClient {
  final String baseUrl = '${AppUrls.urlSchema}${AppUrls.mainUrl}${AppUrls.mainUrlPort}/';

  MainNetworkClient({
    required SecureStorageManager secureStorageManager,
  }) {
    configClient(
      baseOptions: BaseOptions(
        baseUrl: baseUrl,
        contentType: Headers.jsonContentType,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
      interceptors: [InterceptorMainClient(secureStorageManager: secureStorageManager)],
    );
  }
}
