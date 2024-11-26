// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TasksResultModel _$TasksResultModelFromJson(Map<String, dynamic> json) =>
    TasksResultModel(
      count: (json['count'] as num).toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => TaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TasksResultModelToJson(TasksResultModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };
