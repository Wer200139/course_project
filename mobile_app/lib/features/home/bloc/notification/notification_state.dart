part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _InitialState;

  const factory NotificationState.loading() = _LoadingState;

  const factory NotificationState.success({
    required List<NotificationModel> notifications,
  }) = _SuccessState;

  const factory NotificationState.error() = _ErrorState;
}
