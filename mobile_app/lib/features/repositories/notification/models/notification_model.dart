import 'package:clokwise/features/repositories/notification/models/notification_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationModel {
  final int id;
  final DateTime datetimeCreated;
  final String text;
  final String? header;
  final String? url;
  final bool isRead;
  final NotificationDataModel? otherData;

  const NotificationModel({
    required this.id,
    required this.datetimeCreated,
    required this.text,
    required this.isRead,
    required this.otherData,
    this.header,
    this.url,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationModelToJson(this);

  NotificationModel copyWith({
    int? id,
    DateTime? datetimeCreated,
    String? text,
    String? header,
    String? url,
    bool? isRead,
    NotificationDataModel? otherData,
  }) {
    return NotificationModel(
      id: id ?? this.id,
      datetimeCreated: datetimeCreated ?? this.datetimeCreated,
      text: text ?? this.text,
      header: header ?? this.header,
      url: url ?? this.url,
      isRead: isRead ?? this.isRead,
      otherData: otherData ?? this.otherData,
    );
  }
}
