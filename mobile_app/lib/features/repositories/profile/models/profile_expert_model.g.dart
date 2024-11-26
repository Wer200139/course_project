// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_expert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileExpertModel _$ProfileExpertModelFromJson(Map<String, dynamic> json) =>
    ProfileExpertModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String,
      education: (json['education'] as List<dynamic>)
          .map((e) => EducationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      experience: (json['experience'] as List<dynamic>)
          .map((e) => ExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      currentUserPaidForView: json['current_user_paid_for_view'] as bool?,
    );

Map<String, dynamic> _$ProfileExpertModelToJson(ProfileExpertModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'avatar': instance.avatar?.toJson(),
      'education': instance.education.map((e) => e.toJson()).toList(),
      'experience': instance.experience.map((e) => e.toJson()).toList(),
      'rating': instance.rating,
      'current_user_paid_for_view': instance.currentUserPaidForView,
    };
