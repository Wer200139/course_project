import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_model.dart';
import 'package:clokwise/features/repositories/profile/models/experience_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_expert_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ProfileExpertModel {
  final String firstName;
  final String lastName;
  final String? phoneNumber;
  final String email;
  final AvatarModel? avatar;
  final List<EducationModel> education;
  final List<ExperienceModel> experience;
  final double? rating;
  final bool? currentUserPaidForView; //TODO вынести в отдельную модель, для разделения логики

  const ProfileExpertModel({
    required this.firstName,
    required this.lastName,
    this.phoneNumber,
    required this.email,
    required this.education,
    required this.experience,
    this.avatar,
    this.rating,
    this.currentUserPaidForView,
  });

  factory ProfileExpertModel.fromJson(Map<String, dynamic> json) => _$ProfileExpertModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileExpertModelToJson(this);
}
