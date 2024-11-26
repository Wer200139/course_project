import 'package:clokwise/features/repositories/chats/models/message_model.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/repositories/user/models/user_chat_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_list_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ChatListModel {
  final int id;
  final UserChatModel? user;
  final TaskModel? searchRequest;
  final bool isConfirmed;
  final bool isConfirmedByRecipient;
  final int unreadMessagesCount;
  final bool? isClosed;
  final bool? hasReview;
  final bool? recipientIsExpert;
  final DateTime? willBeDeletedAt;
  final int attachmentsSize;

  @JsonKey(name: 'last_5_messages')
  final List<MessageModel> lastMessages;

  const ChatListModel({
    required this.id,
    required this.user,
    required this.searchRequest,
    required this.lastMessages,
    required this.isConfirmed,
    required this.isConfirmedByRecipient,
    required this.unreadMessagesCount,
    required this.isClosed,
    required this.hasReview,
    required this.recipientIsExpert,
    required this.attachmentsSize,
    this.willBeDeletedAt,
  });

  ChatListModel copyWith({
    int? id,
    UserChatModel? user,
    TaskModel? searchRequest,
    bool? isConfirmed,
    bool? isConfirmedByRecipient,
    int? unreadMessagesCount,
    bool? isClosed,
    bool? hasReview,
    bool? recipientIsExpert,
    DateTime? availableUntil,
    List<MessageModel>? lastMessages,
    int? attachmentsSize,
  }) {
    return ChatListModel(
      id: id ?? this.id,
      user: user ?? this.user,
      searchRequest: searchRequest ?? this.searchRequest,
      isConfirmed: isConfirmed ?? this.isConfirmed,
      isConfirmedByRecipient: isConfirmedByRecipient ?? this.isConfirmedByRecipient,
      unreadMessagesCount: unreadMessagesCount ?? this.unreadMessagesCount,
      isClosed: isClosed ?? this.isClosed,
      hasReview: hasReview ?? this.hasReview,
      recipientIsExpert: recipientIsExpert ?? this.recipientIsExpert,
      willBeDeletedAt: availableUntil ?? this.willBeDeletedAt,
      lastMessages: lastMessages ?? this.lastMessages,
      attachmentsSize: attachmentsSize ?? this.attachmentsSize,
    );
  }

  factory ChatListModel.fromJson(Map<String, dynamic> json) => _$ChatListModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatListModelToJson(this);
}
