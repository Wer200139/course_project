// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subfunction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubfunctionModel _$SubfunctionModelFromJson(Map<String, dynamic> json) =>
    SubfunctionModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      orderNumber: (json['order_number'] as num).toInt(),
    );

Map<String, dynamic> _$SubfunctionModelToJson(SubfunctionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_number': instance.orderNumber,
    };
