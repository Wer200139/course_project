// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRequest _$SearchRequestFromJson(Map<String, dynamic> json) =>
    SearchRequest(
      industry: (json['industry'] as num?)?.toInt(),
      subindustry: (json['subindustry'] as num?)?.toInt(),
      function: (json['function'] as num?)?.toInt(),
      subfunction: (json['subfunction'] as num?)?.toInt(),
      prompt: json['prompt'] as String?,
      experience: (json['experience'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchRequestToJson(SearchRequest instance) {
  final val = <String, dynamic>{};

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
  writeNotNull('experience', instance.experience);
  return val;
}
