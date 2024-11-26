// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) => RequestModel(
      id: (json['id'] as num).toInt(),
      creator: CreatorModel.fromJson(json['creator'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String?,
      applicants: (json['applicants'] as List<dynamic>)
          .map((e) => ExpertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      applicantsCount: (json['applicants_count'] as num).toInt(),
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      industry: json['industry'] == null
          ? null
          : ClassificatorModel.fromJson(
              json['industry'] as Map<String, dynamic>),
      subindustry: json['subindustry'] == null
          ? null
          : ClassificatorModel.fromJson(
              json['subindustry'] as Map<String, dynamic>),
      function: json['function'] == null
          ? null
          : ClassificatorModel.fromJson(
              json['function'] as Map<String, dynamic>),
      subfunction: json['subfunction'] == null
          ? null
          : ClassificatorModel.fromJson(
              json['subfunction'] as Map<String, dynamic>),
      type: $enumDecode(_$TaskTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$RequestModelToJson(RequestModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'creator': instance.creator,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  val['applicants'] = instance.applicants;
  val['applicants_count'] = instance.applicantsCount;
  val['datetime_created'] = instance.datetimeCreated.toIso8601String();
  writeNotNull('industry', instance.industry);
  writeNotNull('subindustry', instance.subindustry);
  writeNotNull('function', instance.function);
  writeNotNull('subfunction', instance.subfunction);
  val['type'] = _$TaskTypeEnumMap[instance.type]!;
  return val;
}

const _$TaskTypeEnumMap = {
  TaskType.public: 'PUBLIC',
  TaskType.closed: 'CLOSED',
};
