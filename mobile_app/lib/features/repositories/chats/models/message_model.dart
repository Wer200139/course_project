import 'package:clokwise/features/repositories/chats/models/attachment_model.dart';
import 'package:clokwise/features/repositories/user/models/user_chat_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class MessageModel {
  final int id;
  final DateTime datetimeCreated;
  final String? text;
  final UserChatModel fromUser;
  final List<AttachmentModel> attachments;
  final DateTime? datetimeRead;
  final DateTime? availableUntil;
  final bool markedAsDeleted;

  const MessageModel({
    required this.id,
    required this.datetimeCreated,
    required this.text,
    required this.fromUser,
    required this.attachments,
    required this.datetimeRead,
    required this.availableUntil,
    required this.markedAsDeleted,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);

  MessageModel copyWith({
    int? id,
    String? text,
    UserChatModel? fromUser,
    DateTime? datetimeCreated,
    List<AttachmentModel>? attachments,
    DateTime? datetimeRead,
    DateTime? availableUntil,
    bool? markedAsDeleted,
  }) {
    return MessageModel(
      id: id ?? this.id,
      text: text ?? this.text,
      fromUser: fromUser ?? this.fromUser,
      datetimeCreated: datetimeCreated ?? this.datetimeCreated,
      attachments: attachments ?? this.attachments,
      datetimeRead: datetimeRead ?? this.datetimeRead,
      availableUntil: availableUntil ?? this.availableUntil,
      markedAsDeleted: markedAsDeleted ?? this.markedAsDeleted,
    );
  }
}
