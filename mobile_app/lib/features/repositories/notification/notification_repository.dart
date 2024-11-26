import 'dart:async';
import 'dart:convert';

import 'package:clokwise/common/constants/app_urls.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:clokwise/features/repositories/notification/models/notification_model.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:web_socket_client/web_socket_client.dart';

class NotificationRepository implements CwDisposable {
  final _path = 'notifications';

  final MainNetworkClient _mainNetworkClient;

  NotificationRepository({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient {
    _init();
  }

  late final WebSocket socket;

  final _notificationController = StreamController<NotificationModel>.broadcast();

  Stream<NotificationModel> get notificationStream => _notificationController.stream;


  Future<void> _init() async {
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    final authToken = await secureStorage.read(key: SecureStorageKeys.authToken.name);
    final refreshToken = await secureStorage.read(key: SecureStorageKeys.refreshToken.name);

    final getParams = '?Refresh=$refreshToken&Authorization=Bearer $authToken';

    socket = WebSocket(Uri.parse('${AppUrls.wsSchema}${AppUrls.mainWs}/$_path/ws/$getParams'));

    socket.messages.listen((message) {
      _onNotificationMessage(message);
    });
  }

  @override
  FutureOr<void> dispose() {
    socket.close();
  }

  void disconnect() {
    socket.close();
  }

  void markAsRead({required int notificationId}) {
    dynamic data = jsonEncode({
      "type": "mark_notification_as_read",
      "data": {
        "notification_id": notificationId,
      }
    });

    socket.send(data);
  }

  void _onNotificationMessage(dynamic data) {
    final jsonData = jsonDecode(data);
    final notificationData = jsonData['data'];
    NotificationModel message = NotificationModel.fromJson(notificationData);
    _notificationController.add(message);
  }

  Future<List<NotificationModel>> getAllNotifications() async {
    final response = await _mainNetworkClient.client.get(
      '$_path/get/',
    );

    final result = response.data.map<NotificationModel>((message) => NotificationModel.fromJson(message)).toList();

    return result;
  }
}

enum NotificationType {
  @JsonValue('new_chat_message')
  newChatMessage,
  @JsonValue('new_general_request')
  newGeneralRequest,
  @JsonValue('invited_to_request')
  invitedToRequest,
  @JsonValue('new_request_application')
  newRequestApplication
}
