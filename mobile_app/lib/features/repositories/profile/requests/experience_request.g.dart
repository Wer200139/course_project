// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExperienceRequest _$ExperienceRequestFromJson(Map<String, dynamic> json) =>
    ExperienceRequest(
      organizationName: json['organization_name'] as String,
      dateStart: json['date_start'] as String,
      dateEnd: json['date_end'] as String,
      position: json['position'] as String,
      segments: (json['segments'] as List<dynamic>)
          .map((e) =>
              SegmentExperienceRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExperienceRequestToJson(ExperienceRequest instance) =>
    <String, dynamic>{
      'organization_name': instance.organizationName,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'position': instance.position,
      'segments': instance.segments.map((e) => e.toJson()).toList(),
    };
