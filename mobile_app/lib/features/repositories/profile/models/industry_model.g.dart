// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'industry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndustryModel _$IndustryModelFromJson(Map<String, dynamic> json) =>
    IndustryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
    );

Map<String, dynamic> _$IndustryModelToJson(IndustryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_number': instance.orderNumber,
    };
