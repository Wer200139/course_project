// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      id: (json['id'] as num).toInt(),
      creator: CreatorModel.fromJson(json['creator'] as Map<String, dynamic>),
      name: json['name'] as String,
      description: json['description'] as String?,
      applicants: (json['applicants'] as List<dynamic>)
          .map((e) => ExpertModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      applicantsCount: (json['applicants_count'] as num).toInt(),
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      datetimeExpire: json['datetime_expire'] == null
          ? null
          : DateTime.parse(json['datetime_expire'] as String),
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
      isApplicationSent: json['is_application_sent'] as bool,
      creatorRating: (json['creator_rating'] as num?)?.toDouble(),
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) {
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
  writeNotNull('datetime_expire', instance.datetimeExpire?.toIso8601String());
  writeNotNull('industry', instance.industry);
  writeNotNull('subindustry', instance.subindustry);
  writeNotNull('function', instance.function);
  writeNotNull('subfunction', instance.subfunction);
  val['type'] = _$TaskTypeEnumMap[instance.type]!;
  val['is_application_sent'] = instance.isApplicationSent;
  writeNotNull('creator_rating', instance.creatorRating);
  val['is_active'] = instance.isActive;
  return val;
}

const _$TaskTypeEnumMap = {
  TaskType.public: 'PUBLIC',
  TaskType.closed: 'CLOSED',
};
