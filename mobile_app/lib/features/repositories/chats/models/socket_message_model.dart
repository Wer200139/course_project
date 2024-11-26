import 'package:clokwise/features/repositories/chats/models/chat_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/message_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'socket_message_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SocketMessageModel {
  final SocketMessageType type;
  final int? chatId;
  final MessageModel? message;
  final ChatListModel? chat;

  const SocketMessageModel({
    required this.type,
    this.chatId,
    this.message,
    this.chat,
  });

  factory SocketMessageModel.fromJson(Map<String, dynamic> json) => _$SocketMessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$SocketMessageModelToJson(this);
}

enum SocketMessageType {
  @JsonValue('new_message')
  newMessage,
  @JsonValue('chatting_confirmed')
  chattingConfirmed,
  @JsonValue('chat_closed')
  closed,
  @JsonValue('new_chat')
  newChat,
  @JsonValue('message_updated')
  messageUpdated,
  @JsonValue('mark_chat_as_read')
  markChatAsRead,
  @JsonValue('chat_has_been_read')
  chatHasBeenRead,
  @JsonValue('chatting_declined')
  chatDeclined,
}
