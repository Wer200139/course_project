import 'package:json_annotation/json_annotation.dart';

part 'create_device_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateDeviceRequest {
  final String registrationId;
  final String deviceId;
  final bool active;
  final DeviceType type;

  const CreateDeviceRequest({
    required this.registrationId,
    required this.deviceId,
    required this.active,
    required this.type,
  });

  factory CreateDeviceRequest.fromJson(Map<String, dynamic> json) => _$CreateDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateDeviceRequestToJson(this);
}


enum DeviceType {
  ios,
  android,
  web,
}

