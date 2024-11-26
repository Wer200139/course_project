// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      id: (json['id'] as num).toInt(),
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      rating: (json['rating'] as num).toDouble(),
      text: json['text'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datetime_created': instance.datetimeCreated.toIso8601String(),
      'rating': instance.rating,
      'text': instance.text,
      'name': instance.name,
    };
