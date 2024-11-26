// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationModel _$EducationModelFromJson(Map<String, dynamic> json) =>
    EducationModel(
      educationLevel: (json['education_level'] as num).toInt(),
      educationDegree: (json['education_degree'] as num).toInt(),
      institutionName: json['institution_name'] as String,
      specialityName: json['speciality_name'] as String,
      departmentName: json['department_name'] as String,
    );

Map<String, dynamic> _$EducationModelToJson(EducationModel instance) =>
    <String, dynamic>{
      'education_level': instance.educationLevel,
      'education_degree': instance.educationDegree,
      'institution_name': instance.institutionName,
      'speciality_name': instance.specialityName,
      'department_name': instance.departmentName,
    };
