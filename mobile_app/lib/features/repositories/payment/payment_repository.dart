import 'dart:async';

import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class PaymentRepository implements CwDisposable {
  final _path = 'test';

  final MainNetworkClient _mainNetworkClient;

  const PaymentRepository({
    required MainNetworkClient mainNetworkClient,
  })  : _mainNetworkClient = mainNetworkClient;

  @override
  FutureOr<void> dispose() {}

  Future<DateTime> prolongSubscription() async {
    final response = await _mainNetworkClient.client.post(
      '$_path/prolong-subscription/',
    );

    return DateTime.parse(response.data['subscription_until'] as String);
  }

  Future<void> payProfileView({required int idProfile}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/pay-for-profile-view/$idProfile/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data);
    }
  }

  Future<void> payBoostResponse({required int idChat}) async {
    final response = await _mainNetworkClient.client.post(
      '$_path/pay-for-boost-response/$idChat/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data);
    }
  }
}
