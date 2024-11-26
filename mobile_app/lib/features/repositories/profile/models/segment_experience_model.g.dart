// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segment_experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SegmentExperienceModel _$SegmentExperienceModelFromJson(
        Map<String, dynamic> json) =>
    SegmentExperienceModel(
      industry:
          ClassificatorModel.fromJson(json['industry'] as Map<String, dynamic>),
      subindustry: ClassificatorModel.fromJson(
          json['subindustry'] as Map<String, dynamic>),
      function:
          ClassificatorModel.fromJson(json['function'] as Map<String, dynamic>),
      subfunction: ClassificatorModel.fromJson(
          json['subfunction'] as Map<String, dynamic>),
      dateStart: json['date_start'] as String,
      dateEnd: json['date_end'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$SegmentExperienceModelToJson(
        SegmentExperienceModel instance) =>
    <String, dynamic>{
      'industry': instance.industry.toJson(),
      'subindustry': instance.subindustry.toJson(),
      'function': instance.function.toJson(),
      'subfunction': instance.subfunction.toJson(),
      'date_start': instance.dateStart,
      'date_end': instance.dateEnd,
      'description': instance.description,
    };
