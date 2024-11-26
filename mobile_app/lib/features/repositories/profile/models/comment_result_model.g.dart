// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResultModel _$ReviewResultModelFromJson(Map<String, dynamic> json) =>
    ReviewResultModel(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReviewResultModelToJson(ReviewResultModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
