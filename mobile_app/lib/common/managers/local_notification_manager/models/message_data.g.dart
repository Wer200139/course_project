// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageData _$MessageDataFromJson(Map<String, dynamic> json) => MessageData(
      title: json['title'] as String,
      body: json['body'] as String,
      notificationId: json['notificationId'] as String?,
      analyticsLabel: json['analyticsLabel'] as String?,
      route: json['route'] as String?,
      routeAppointmentId: json['routeAppointmentId'] as String?,
      routeNpsId: json['routeNpsId'] as String?,
      routeRateId: json['routeRateId'] as String?,
      routeRateType: json['routeRateType'] as String?,
      routeDocumentGroupId: json['routeDocumentGroupId'] as String?,
      routeAppointmentRepeatScheduleDate:
          json['routeAppointmentRepeatScheduleDate'] as String?,
      routeListType: json['routeListType'] as String?,
      routeFamilyProfileUuid: json['routeFamilyProfileUuid'] as String?,
    );

Map<String, dynamic> _$MessageDataToJson(MessageData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'notificationId': instance.notificationId,
      'analyticsLabel': instance.analyticsLabel,
      'route': instance.route,
      'routeAppointmentId': instance.routeAppointmentId,
      'routeNpsId': instance.routeNpsId,
      'routeRateId': instance.routeRateId,
      'routeRateType': instance.routeRateType,
      'routeDocumentGroupId': instance.routeDocumentGroupId,
      'routeAppointmentRepeatScheduleDate':
          instance.routeAppointmentRepeatScheduleDate,
      'routeListType': instance.routeListType,
      'routeFamilyProfileUuid': instance.routeFamilyProfileUuid,
    };
