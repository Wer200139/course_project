// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateDeviceRequest _$CreateDeviceRequestFromJson(Map<String, dynamic> json) =>
    CreateDeviceRequest(
      registrationId: json['registration_id'] as String,
      deviceId: json['device_id'] as String,
      active: json['active'] as bool,
      type: $enumDecode(_$DeviceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$CreateDeviceRequestToJson(
        CreateDeviceRequest instance) =>
    <String, dynamic>{
      'registration_id': instance.registrationId,
      'device_id': instance.deviceId,
      'active': instance.active,
      'type': _$DeviceTypeEnumMap[instance.type]!,
    };

const _$DeviceTypeEnumMap = {
  DeviceType.ios: 'ios',
  DeviceType.android: 'android',
  DeviceType.web: 'web',
};
