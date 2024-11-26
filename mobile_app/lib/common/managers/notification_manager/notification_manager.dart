import 'dart:async';

import 'package:clokwise/common/managers/local_notification_manager/local_notification_manager.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/utils/context_holder.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/customer_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationManager {
  static final NotificationManager _deviceService =
      NotificationManager._internal();

  factory NotificationManager() {
    return _deviceService;
  }

  NotificationManager._internal();

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  final titleCtlr = StreamController<String>.broadcast();

  String? pushToken;

  init() async {
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    await messaging.setForegroundNotificationPresentationOptions(
        alert: false, badge: false, sound: false);

    FirebaseMessaging.onBackgroundMessage(_messageHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('MESSAGE DATA: ${message.data}');
      _processedNotificationData(message.data);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('MESSAGE OPENED DATA: ${message.data}');
      _processedBackgroundNotificationData(message.data);
    });

    messaging.getInitialMessage().then((message) {
      if (message != null) {
        print('MESSAGE DATA: ${message.data}');
        _processedNotificationData(message.data);
      }
    });

    try {
      await messaging.getToken().then((value) {
        print('PUSH TOKEN: $value');
        pushToken = value!;
      });
    } catch (e) {
      print('ERROR: ${e.toString()}');
    }
  }

  _processedBackgroundNotificationData(Map<String, dynamic>? data) async {
    if (data == null) {
      return;
    }

    WidgetsFlutterBinding.ensureInitialized();

    final context = await ContextHolder.context;
    final userId = await BlocProvider.of<AuthBloc>(context).state.maybeMap(
          success: (state) => state.user.id,
          orElse: () => 0,
        );

    if (userId > 0) {
      if (data['type'] == 'new_general_request') {
        CustomNavigator.showModal(
          context: context,
          child: ExpertTaskDetailsPage(
            id: int.parse(data['request_id']),
          ),
        );
      }
      if(data['type'] == 'new_request_application') {
        CustomNavigator.showModal(
          context: context,
          child: CustomerTaskDetailsPage(
            id: int.parse(data['request_id']),
          ),
        );
      }
      if(data['type'] == 'invited_to_request') {
        CustomNavigator.showModal(
          context: context,
          child: ExpertTaskDetailsPage(
            id: int.parse(data['request_id']),
          ),
        );
      }
    }
    print(data);
  }

  _processedNotificationData(Map<String, dynamic>? data) async {
    if (data == null) {
      return;
    }
    print(data);

  }

  dispose() {
    titleCtlr.close();
  }
}

Future<void> _messageHandler(RemoteMessage message) async {
  if (message.data['type'] == 'new_chat_message') {
    LocalNotificationManager.show(
        hashCode: 1,
        title: message.data['name'],
        body: message.data['text'],
        payload: message.data.toString());
  }

  print('Handling a background message: ${message.messageId}');
  print('Handling a background message: ${message.notification}');
  print('Handling a background message DATA: ${message.data}');
}
