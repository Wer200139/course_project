import 'package:json_annotation/json_annotation.dart';

part 'send_message_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class SendMessageRequest {
  final String? text;
  final int chatId;
  final List<String>? attachments;

  const SendMessageRequest({
    required this.text,
    required this.chatId,
    this.attachments,
  });

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) => _$SendMessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageRequestToJson(this);
}
