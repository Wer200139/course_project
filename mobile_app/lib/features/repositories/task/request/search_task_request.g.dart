// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_task_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTaskRequest _$SearchTaskRequestFromJson(Map<String, dynamic> json) =>
    SearchTaskRequest(
      page: (json['page'] as num).toInt(),
      industry: (json['industry'] as num?)?.toInt(),
      subindustry: (json['subindustry'] as num?)?.toInt(),
      function: (json['function'] as num?)?.toInt(),
      subfunction: (json['subfunction'] as num?)?.toInt(),
      prompt: json['prompt'] as String?,
    );

Map<String, dynamic> _$SearchTaskRequestToJson(SearchTaskRequest instance) {
  final val = <String, dynamic>{
    'page': instance.page,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('industry', instance.industry);
  writeNotNull('subindustry', instance.subindustry);
  writeNotNull('function', instance.function);
  writeNotNull('subfunction', instance.subfunction);
  writeNotNull('prompt', instance.prompt);
  return val;
}
