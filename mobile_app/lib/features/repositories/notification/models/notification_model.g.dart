// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    NotificationModel(
      id: (json['id'] as num).toInt(),
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      text: json['text'] as String,
      isRead: json['is_read'] as bool,
      otherData: json['other_data'] == null
          ? null
          : NotificationDataModel.fromJson(
              json['other_data'] as Map<String, dynamic>),
      header: json['header'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$NotificationModelToJson(NotificationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime_created': instance.datetimeCreated.toIso8601String(),
      'text': instance.text,
      'header': instance.header,
      'url': instance.url,
      'is_read': instance.isRead,
      'other_data': instance.otherData,
    };
