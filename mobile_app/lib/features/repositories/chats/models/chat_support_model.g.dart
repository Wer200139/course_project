// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatSupportModel _$ChatSupportModelFromJson(Map<String, dynamic> json) =>
    ChatSupportModel(
      id: (json['id'] as num).toInt(),
      lastMessages: (json['last_5_messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isConfirmed: json['is_confirmed'] as bool,
      isConfirmedByRecipient: json['is_confirmed_by_recipient'] as bool,
      unreadMessagesCount: (json['unread_messages_count'] as num).toInt(),
    );

Map<String, dynamic> _$ChatSupportModelToJson(ChatSupportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_confirmed': instance.isConfirmed,
      'is_confirmed_by_recipient': instance.isConfirmedByRecipient,
      'unread_messages_count': instance.unreadMessagesCount,
      'last_5_messages': instance.lastMessages.map((e) => e.toJson()).toList(),
    };
