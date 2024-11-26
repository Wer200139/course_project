import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_customer_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProfileCustomerModel {
  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final String email;
  final AvatarModel? avatar;
  final String? personWebsite;
  final String? personActivityDescription;
  final double? rating;

  const ProfileCustomerModel({
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
    required this.email,
    this.avatar,
    this.personWebsite,
    this.personActivityDescription,
    this.rating,
  });

  factory ProfileCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileCustomerModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCustomerModelToJson(this);
}
