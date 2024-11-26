// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      id: (json['id'] as num).toInt(),
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      text: json['text'] as String?,
      fromUser:
          UserChatModel.fromJson(json['from_user'] as Map<String, dynamic>),
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => AttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      datetimeRead: json['datetime_read'] == null
          ? null
          : DateTime.parse(json['datetime_read'] as String),
      availableUntil: json['available_until'] == null
          ? null
          : DateTime.parse(json['available_until'] as String),
      markedAsDeleted: json['marked_as_deleted'] as bool,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime_created': instance.datetimeCreated.toIso8601String(),
      'text': instance.text,
      'from_user': instance.fromUser.toJson(),
      'attachments': instance.attachments.map((e) => e.toJson()).toList(),
      'datetime_read': instance.datetimeRead?.toIso8601String(),
      'available_until': instance.availableUntil?.toIso8601String(),
      'marked_as_deleted': instance.markedAsDeleted,
    };
