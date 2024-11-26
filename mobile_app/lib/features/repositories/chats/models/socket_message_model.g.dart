// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SocketMessageModel _$SocketMessageModelFromJson(Map<String, dynamic> json) =>
    SocketMessageModel(
      type: $enumDecode(_$SocketMessageTypeEnumMap, json['type']),
      chatId: (json['chat_id'] as num?)?.toInt(),
      message: json['message'] == null
          ? null
          : MessageModel.fromJson(json['message'] as Map<String, dynamic>),
      chat: json['chat'] == null
          ? null
          : ChatListModel.fromJson(json['chat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SocketMessageModelToJson(SocketMessageModel instance) =>
    <String, dynamic>{
      'type': _$SocketMessageTypeEnumMap[instance.type]!,
      'chat_id': instance.chatId,
      'message': instance.message?.toJson(),
      'chat': instance.chat?.toJson(),
    };

const _$SocketMessageTypeEnumMap = {
  SocketMessageType.newMessage: 'new_message',
  SocketMessageType.chattingConfirmed: 'chatting_confirmed',
  SocketMessageType.closed: 'chat_closed',
  SocketMessageType.newChat: 'new_chat',
  SocketMessageType.messageUpdated: 'message_updated',
  SocketMessageType.markChatAsRead: 'mark_chat_as_read',
  SocketMessageType.chatHasBeenRead: 'chat_has_been_read',
  SocketMessageType.chatDeclined: 'chatting_declined',
};
