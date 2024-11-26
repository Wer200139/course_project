// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subindustry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubindustryModel _$SubindustryModelFromJson(Map<String, dynamic> json) =>
    SubindustryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
    );

Map<String, dynamic> _$SubindustryModelToJson(SubindustryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_number': instance.orderNumber,
    };
