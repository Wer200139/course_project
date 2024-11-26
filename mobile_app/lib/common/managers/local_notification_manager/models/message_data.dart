import 'package:json_annotation/json_annotation.dart';

part 'message_data.g.dart';

@JsonSerializable()
class MessageData {
  final String title;
  final String body;
  final String? notificationId;
  final String? analyticsLabel;
  final String? route;
  final String? routeAppointmentId;
  final String? routeNpsId;
  final String? routeRateId;
  final String? routeRateType;
  final String? routeDocumentGroupId;
  final String? routeAppointmentRepeatScheduleDate;
  final String? routeListType;
  final String? routeFamilyProfileUuid;

  MessageData({
    required this.title,
    required this.body,
    this.notificationId,
    this.analyticsLabel,
    this.route,
    this.routeAppointmentId,
    this.routeNpsId,
    this.routeRateId,
    this.routeRateType,
    this.routeDocumentGroupId,
    this.routeAppointmentRepeatScheduleDate,
    this.routeListType,
    this.routeFamilyProfileUuid,
  });

  factory MessageData.fromJson(Map<String, dynamic> json) => _$MessageDataFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDataToJson(this);
}
