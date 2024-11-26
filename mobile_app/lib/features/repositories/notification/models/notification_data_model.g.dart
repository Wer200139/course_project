// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationDataModel _$NotificationDataModelFromJson(
        Map<String, dynamic> json) =>
    NotificationDataModel(
      type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
      name: json['name'] as String?,
      text: json['text'] as String?,
      chatId: json['chat_id'] as String?,
      currentUserIsExpert: json['current_user_is_expert'] as String?,
      requestId: json['request_id'] as String?,
    );

Map<String, dynamic> _$NotificationDataModelToJson(
        NotificationDataModel instance) =>
    <String, dynamic>{
      'type': _$NotificationTypeEnumMap[instance.type]!,
      'name': instance.name,
      'text': instance.text,
      'chat_id': instance.chatId,
      'current_user_is_expert': instance.currentUserIsExpert,
      'request_id': instance.requestId,
    };

const _$NotificationTypeEnumMap = {
  NotificationType.newChatMessage: 'new_chat_message',
  NotificationType.newGeneralRequest: 'new_general_request',
  NotificationType.invitedToRequest: 'invited_to_request',
  NotificationType.newRequestApplication: 'new_request_application',
};
