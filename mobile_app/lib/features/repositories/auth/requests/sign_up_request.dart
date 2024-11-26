import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignUpRequest {
  final String email;
  final String password;
  final String? phoneNumber;
  final String firstName;
  final String lastName;

  const SignUpRequest({
    required this.email,
    required this.password,
    this.phoneNumber,
    required this.firstName,
    required this.lastName,
  });

  factory SignUpRequest.fromJson(Map<String, dynamic> json) => _$SignUpRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpRequestToJson(this);
}
