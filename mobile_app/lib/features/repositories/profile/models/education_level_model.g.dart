// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_level_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationLevelModel _$EducationLevelModelFromJson(Map<String, dynamic> json) =>
    EducationLevelModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
    );

Map<String, dynamic> _$EducationLevelModelToJson(
        EducationLevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_number': instance.orderNumber,
    };
