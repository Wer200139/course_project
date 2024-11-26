// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment_experience_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentExperienceRequest _$SegmentExperienceRequestFromJson(
        Map<String, dynamic> json) =>
    SegmentExperienceRequest(
      industry: (json['industry'] as num).toInt(),
      subindustry: (json['subindustry'] as num).toInt(),
      function: (json['function'] as num).toInt(),
      subfunction: (json['subfunction'] as num).toInt(),
      dateStart: json['date_start'] as String,
      dateEnd: json['date_end'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SegmentExperienceRequestToJson(
        SegmentExperienceRequest instance) =>
    <String, dynamic>{
      'industry': instance.industry,
      'subindustry': instance.subindustry,
      'function': instance.function,
      'subfunction': instance.subfunction,
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'description': instance.description,
    };
