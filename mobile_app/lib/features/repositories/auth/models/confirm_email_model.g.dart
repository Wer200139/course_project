// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_email_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmEmailModel _$ConfirmEmailModelFromJson(Map<String, dynamic> json) =>
    ConfirmEmailModel(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$ConfirmEmailModelToJson(ConfirmEmailModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
