import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_chat_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class UserChatModel {
  final int? id;
  final String firstName;
  final String lastName;
  final AvatarModel? avatar;
  final double? rating;
  final DateTime? lastSeen;
  final String? companyName;

  const UserChatModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    this.avatar,
    this.rating,
    this.lastSeen,
    this.companyName,
  });

  factory UserChatModel.fromJson(Map<String, dynamic> json) => _$UserChatModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserChatModelToJson(this);
}
