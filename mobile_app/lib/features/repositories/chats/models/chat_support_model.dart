import 'package:clokwise/features/repositories/chats/models/message_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_support_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ChatSupportModel {
  final int id;
  final bool isConfirmed;
  final bool isConfirmedByRecipient;
  final int unreadMessagesCount;

  @JsonKey(name: 'last_5_messages')
  final List<MessageModel> lastMessages;



  const ChatSupportModel({
    required this.id,
    required this.lastMessages,
    required this.isConfirmed,
    required this.isConfirmedByRecipient,
    required this.unreadMessagesCount,
  });

  factory ChatSupportModel.fromJson(Map<String, dynamic> json) => _$ChatSupportModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatSupportModelToJson(this);
}
