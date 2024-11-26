// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatorModel _$CreatorModelFromJson(Map<String, dynamic> json) => CreatorModel(
      id: (json['id'] as num).toInt(),
      type: $enumDecode(_$TypeAccountEnumMap, json['type']),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      companyDescription: json['company_description'] as String?,
      companyName: json['company_name'] as String?,
      companyWebsite: json['company_website'] as String?,
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatorModelToJson(CreatorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$TypeAccountEnumMap[instance.type]!,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company_name': instance.companyName,
      'company_description': instance.companyDescription,
      'company_website': instance.companyWebsite,
      'avatar': instance.avatar,
    };

const _$TypeAccountEnumMap = {
  TypeAccount.PERSON: 'PERSON',
  TypeAccount.COMPANY: 'COMPANY',
  TypeAccount.EXPERT: 'EXPERT',
};
