// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTaskRequest _$CreateTaskRequestFromJson(Map<String, dynamic> json) =>
    CreateTaskRequest(
      name: json['name'] as String,
      industry: (json['industry'] as num).toInt(),
      subindustry: (json['subindustry'] as num?)?.toInt(),
      function: (json['function'] as num?)?.toInt(),
      subfunction: (json['subfunction'] as num?)?.toInt(),
      description: json['description'] as String,
      type: $enumDecode(_$TaskTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$CreateTaskRequestToJson(CreateTaskRequest instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'industry': instance.industry,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('subindustry', instance.subindustry);
  writeNotNull('function', instance.function);
  writeNotNull('subfunction', instance.subfunction);
  val['description'] = instance.description;
  val['type'] = _$TaskTypeEnumMap[instance.type]!;
  return val;
}

const _$TaskTypeEnumMap = {
  TaskType.public: 'PUBLIC',
  TaskType.closed: 'CLOSED',
};
