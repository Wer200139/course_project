import 'package:clokwise/features/repositories/user/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LoginModel {
  final UserModel user;
  final String refresh;
  final String access;

  const LoginModel ({
    required this.user,
    required this.refresh,
    required this.access,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
