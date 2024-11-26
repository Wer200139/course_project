import 'package:json_annotation/json_annotation.dart';

part 'update_profile_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UpdateProfileRequest {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String confirmationCode;


  const UpdateProfileRequest({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.confirmationCode,
  });

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
