// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileCustomerModel _$ProfileCustomerModelFromJson(
        Map<String, dynamic> json) =>
    ProfileCustomerModel(
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String,
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      personWebsite: json['person_website'] as String?,
      personActivityDescription: json['person_activity_description'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProfileCustomerModelToJson(
        ProfileCustomerModel instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'avatar': instance.avatar,
      'person_website': instance.personWebsite,
      'person_activity_description': instance.personActivityDescription,
      'rating': instance.rating,
    };
