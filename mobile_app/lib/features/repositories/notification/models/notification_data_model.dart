import 'package:clokwise/features/repositories/notification/notification_repository.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_data_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationDataModel {
  final NotificationType type;
  final String? name;
  final String? text;
  final String? chatId;
  final String? currentUserIsExpert;
  final String? requestId;

  const NotificationDataModel({
    required this.type,
    this.name,
    this.text,
    this.chatId,
    this.currentUserIsExpert,
    this.requestId
  });

  factory NotificationDataModel.fromJson(Map<String, dynamic> json) => _$NotificationDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationDataModelToJson(this);
}
