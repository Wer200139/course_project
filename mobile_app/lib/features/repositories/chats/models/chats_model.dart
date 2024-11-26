import 'package:clokwise/features/repositories/chats/models/chat_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/chat_support_list_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chats_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ChatsModel {
  final ChatSupportListModel supportChat;
  final List<ChatListModel> chats;

  const ChatsModel({
    required this.supportChat,
    required this.chats,
  });

  factory ChatsModel.fromJson(Map<String, dynamic> json) => _$ChatsModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChatsModelToJson(this);
}
