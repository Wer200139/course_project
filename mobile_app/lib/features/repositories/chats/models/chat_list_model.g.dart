// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatListModel _$ChatListModelFromJson(Map<String, dynamic> json) =>
    ChatListModel(
      id: (json['id'] as num).toInt(),
      user: json['user'] == null
          ? null
          : UserChatModel.fromJson(json['user'] as Map<String, dynamic>),
      searchRequest: json['search_request'] == null
          ? null
          : TaskModel.fromJson(json['search_request'] as Map<String, dynamic>),
      lastMessages: (json['last_5_messages'] as List<dynamic>)
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isConfirmed: json['is_confirmed'] as bool,
      isConfirmedByRecipient: json['is_confirmed_by_recipient'] as bool,
      unreadMessagesCount: (json['unread_messages_count'] as num).toInt(),
      isClosed: json['is_closed'] as bool?,
      hasReview: json['has_review'] as bool?,
      recipientIsExpert: json['recipient_is_expert'] as bool?,
      attachmentsSize: (json['attachments_size'] as num).toInt(),
      willBeDeletedAt: json['will_be_deleted_at'] == null
          ? null
          : DateTime.parse(json['will_be_deleted_at'] as String),
    );

Map<String, dynamic> _$ChatListModelToJson(ChatListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user?.toJson(),
      'search_request': instance.searchRequest?.toJson(),
      'is_confirmed': instance.isConfirmed,
      'is_confirmed_by_recipient': instance.isConfirmedByRecipient,
      'unread_messages_count': instance.unreadMessagesCount,
      'is_closed': instance.isClosed,
      'has_review': instance.hasReview,
      'recipient_is_expert': instance.recipientIsExpert,
      'will_be_deleted_at': instance.willBeDeletedAt?.toIso8601String(),
      'attachments_size': instance.attachmentsSize,
      'last_5_messages': instance.lastMessages.map((e) => e.toJson()).toList(),
    };
