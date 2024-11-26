// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileCompanyModel _$ProfileCompanyModelFromJson(Map<String, dynamic> json) =>
    ProfileCompanyModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String,
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      companyName: json['company_name'] as String?,
      companyDescription: json['company_description'] as String?,
      companyInn: (json['company_inn'] as num?)?.toInt(),
      companyWebsite: json['company_website'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProfileCompanyModelToJson(
        ProfileCompanyModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'avatar': instance.avatar?.toJson(),
      'company_name': instance.companyName,
      'company_description': instance.companyDescription,
      'company_inn': instance.companyInn,
      'company_website': instance.companyWebsite,
      'rating': instance.rating,
    };
