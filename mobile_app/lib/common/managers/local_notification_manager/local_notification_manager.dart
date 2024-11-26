import 'dart:convert';
import 'dart:io';

import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/utils/context_holder.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class LocalNotificationManager {
  static const AndroidNotificationChannel _channel = AndroidNotificationChannel(
    'ClockwiseApp',
    'ClockwiseApp',
    importance: Importance.max,
  );

  static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    final AndroidInitializationSettings? initializationSettingsAndroid =
        Platform.isAndroid ? const AndroidInitializationSettings('@mipmap/ic_launcher') : null;

    const DarwinInitializationSettings initializationSettingsDarwin = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    final initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsDarwin,
    );

    await _flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onTapPush,
      onDidReceiveBackgroundNotificationResponse: _onTapPush,
    );

    await _onPushLaunchApp();

    await _flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);
  }



  static Future<void> show({
    required int hashCode,
    required String title,
    required String body,
    //required StyleInformation styleInformation,
    String? payload,
  }) async {
    print('NEW NOTIFICATION!!');
    final AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      _channel.id,
      _channel.name,
      priority: Priority.max,
      importance: Importance.max,
      playSound: true,
      icon: '@mipmap/ic_launcher',
      //styleInformation: styleInformation,
    );

    await _flutterLocalNotificationsPlugin.show(
      hashCode,
      title,
      body,
      NotificationDetails(
          android: androidNotificationDetails,
          iOS: const DarwinNotificationDetails(
            interruptionLevel: InterruptionLevel.timeSensitive,
            presentSound: true,
            presentList: true,
            presentAlert: true,
            presentBadge: true,
            presentBanner: true,
          )),
      payload: payload,
    );
  }

  static void _onTapPush(NotificationResponse? payload) {
    if (payload == null) {
      return;
    }

    final data = jsonDecode(payload.payload!);

    onTapPush(data);
  }

  static Future<void> _onPushLaunchApp() async {
    final details = await _flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    if (details != null && details.didNotificationLaunchApp) {
      _onTapPush(details.notificationResponse);
    }
  }

  Future<void> _requestPermissions() async {
    if (Platform.isIOS || Platform.isMacOS) {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
          MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }
}

void onTapPush(Map<String, dynamic> data) async {
  WidgetsFlutterBinding.ensureInitialized();

  final context = await ContextHolder.context;
  final isAuthenticated = await BlocProvider.of<AuthBloc>(context).state.maybeMap(
        success: (state) => state.user.id,
        orElse: () => 0,
      );

  if (isAuthenticated > 0) {
    if (data['type'] == 'new_chat_message') {
      CustomNavigator.showModal(
        context: context,
        child: ChatDetailsPage(id: int.parse(data['chat_id'])),
      );
      if (data['type'] == '') {}
    }
  }

}
