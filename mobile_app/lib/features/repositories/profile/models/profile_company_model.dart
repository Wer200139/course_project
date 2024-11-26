import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_company_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ProfileCompanyModel {
  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final String email;
  final AvatarModel? avatar;
  final String? companyName;
  final String? companyDescription;
  final int? companyInn;
  final String? companyWebsite;
  final double? rating;

  const ProfileCompanyModel({
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
    required this.email,
    this.avatar,
    this.companyName,
    this.companyDescription,
    this.companyInn,
    this.companyWebsite,
    this.rating,
  });

  factory ProfileCompanyModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileCompanyModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileCompanyModelToJson(this);
}
