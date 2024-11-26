// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_degree_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationDegreeModel _$EducationDegreeModelFromJson(
        Map<String, dynamic> json) =>
    EducationDegreeModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
    );

Map<String, dynamic> _$EducationDegreeModelToJson(
        EducationDegreeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_number': instance.orderNumber,
    };
