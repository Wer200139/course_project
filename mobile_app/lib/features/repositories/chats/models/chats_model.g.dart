// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatsModel _$ChatsModelFromJson(Map<String, dynamic> json) => ChatsModel(
      supportChat: ChatSupportListModel.fromJson(
          json['support_chat'] as Map<String, dynamic>),
      chats: (json['chats'] as List<dynamic>)
          .map((e) => ChatListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChatsModelToJson(ChatsModel instance) =>
    <String, dynamic>{
      'support_chat': instance.supportChat.toJson(),
      'chats': instance.chats.map((e) => e.toJson()).toList(),
    };
