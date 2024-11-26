// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserChatModel _$UserChatModelFromJson(Map<String, dynamic> json) =>
    UserChatModel(
      id: (json['id'] as num?)?.toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      lastSeen: json['last_seen'] == null
          ? null
          : DateTime.parse(json['last_seen'] as String),
      companyName: json['company_name'] as String?,
    );

Map<String, dynamic> _$UserChatModelToJson(UserChatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
      'rating': instance.rating,
      'last_seen': instance.lastSeen?.toIso8601String(),
      'company_name': instance.companyName,
    };
