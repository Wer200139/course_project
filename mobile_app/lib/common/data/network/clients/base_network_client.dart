import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class BaseNetworkClient {
  final Dio client = Dio();

  @protected
  void configClient({
    required BaseOptions baseOptions,
    List<Interceptor>? interceptors,
  }) {
    client.options = baseOptions;

    client.interceptors.addAll([
      ...?interceptors,
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }
}
