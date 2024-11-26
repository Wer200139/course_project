// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicationModel _$ApplicationModelFromJson(Map<String, dynamic> json) =>
    ApplicationModel(
      request: RequestModel.fromJson(json['request'] as Map<String, dynamic>),
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
    );

Map<String, dynamic> _$ApplicationModelToJson(ApplicationModel instance) =>
    <String, dynamic>{
      'request': instance.request,
      'datetime_created': instance.datetimeCreated.toIso8601String(),
    };
