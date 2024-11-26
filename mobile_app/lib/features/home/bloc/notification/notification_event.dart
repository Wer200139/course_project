part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.fetchNotificationRequested() = _FetchNotificationRequestedEvent;

  const factory NotificationEvent.markAsReadNotificationRequestedEvent({required List<int> ids}) =
  _MarkAsReadNotificationRequestedEvent;

  const factory NotificationEvent.updateNotificationRequested({required NotificationModel notification}) = _UpdateNotificationRequestedEvent;
}
