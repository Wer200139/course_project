import 'dart:async';

import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/features/repositories/search/models/expert_result_model.dart';
import 'package:clokwise/features/repositories/search/request/search_request.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class SearchRepository implements CwDisposable {
  final _path = 'expert/search/';

  final MainNetworkClient _mainNetworkClient;

  const SearchRepository({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  FutureOr<void> dispose() {}

  Future<List<ExpertResultModel>> getSearchResult({
    required SearchRequest searchRequest,
  }) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/',
      data: searchRequest.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final experts = response.data
        .map<ExpertResultModel>((message) => ExpertResultModel.fromJson(message))
        .toList();

    return experts;
  }
}
