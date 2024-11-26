// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classificator_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClassificatorModel _$ClassificatorModelFromJson(Map<String, dynamic> json) =>
    ClassificatorModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: $enumDecode(_$IndustryTypeEnumMap, json['type']),
      orderNumber: (json['order_number'] as num).toInt(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ClassificatorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassificatorModelToJson(ClassificatorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$IndustryTypeEnumMap[instance.type]!,
      'order_number': instance.orderNumber,
      'children': instance.children?.map((e) => e.toJson()).toList(),
    };

const _$IndustryTypeEnumMap = {
  IndustryType.INDUSTRY: 'INDUSTRY',
  IndustryType.SUBINDUSTRY: 'SUBINDUSTRY',
  IndustryType.FUNCTION: 'FUNCTION',
  IndustryType.SUBFUNCTION: 'SUBFUNCTION',
};
