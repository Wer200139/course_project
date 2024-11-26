// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperienceModel _$ExperienceModelFromJson(Map<String, dynamic> json) =>
    ExperienceModel(
      organizationName: json['organization_name'] as String,
      dateStart: json['date_start'] as String,
      dateEnd: json['date_end'] as String,
      position: json['position'] as String,
      segments: (json['segments'] as List<dynamic>)
          .map(
              (e) => SegmentExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExperienceModelToJson(ExperienceModel instance) =>
    <String, dynamic>{
      'organization_name': instance.organizationName,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'position': instance.position,
      'segments': instance.segments.map((e) => e.toJson()).toList(),
    };
