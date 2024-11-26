import 'dart:async';

import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class ClassificatorRepository implements CwDisposable {
  final _path = '/experience/';

  final MainNetworkClient _mainNetworkClient;

  const ClassificatorRepository({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  FutureOr<void> dispose() {}

  Future<List<ClassificatorModel>> getIndustries() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-available-industries/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<ClassificatorModel>(
            (message) => ClassificatorModel.fromJson(message))
        .toList();
  }

  Future<List<ClassificatorModel>> getAvailableFunctions({required int id}) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-available-functions/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<ClassificatorModel>(
            (message) => ClassificatorModel.fromJson(message))
        .toList();
  }

  Future<List<ClassificatorModel>> getChildrenClassificator({required int id}) async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get-children-classificators/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    return response.data
        .map<ClassificatorModel>(
            (message) => ClassificatorModel.fromJson(message))
        .toList();
  }
}
