import 'package:clokwise/features/repositories/user/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirm_email_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ConfirmEmailModel {
  final UserModel user;
  final String accessToken;
  final String refreshToken;

  const ConfirmEmailModel({
    required this.user,
    required this.accessToken,
    required this.refreshToken,
  });

  factory ConfirmEmailModel.fromJson(Map<String, dynamic> json) => _$ConfirmEmailModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConfirmEmailModelToJson(this);
}
