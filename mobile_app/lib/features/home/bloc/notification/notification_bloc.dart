import 'dart:async';

import 'package:clokwise/features/repositories/notification/models/notification_model.dart';
import 'package:clokwise/features/repositories/notification/notification_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_bloc.freezed.dart';

part 'notification_event.dart';

part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _notificationRepository;

  late final StreamSubscription<NotificationModel> _notificationStreamSubscription;

  NotificationBloc({
    required NotificationRepository notificationRepository,
  })  : _notificationRepository = notificationRepository,
        super(const NotificationState.initial()) {
    on<NotificationEvent>(
      (event, emit) => event.map(
        updateNotificationRequested: (event) => _onUpdateNotificationRequested(event, emit),
        fetchNotificationRequested: (event) => _onFetchNotificationRequested(emit),
        markAsReadNotificationRequestedEvent: (event) => _onMarkAsReadNotificationRequested(event, emit),
      ),
    );
    _notificationStreamSubscription = _notificationRepository.notificationStream.listen(
      (message) => add(NotificationEvent.updateNotificationRequested(notification: message)),
    );
  }

  @override
  Future<void> close() async {
    _notificationRepository.dispose();
    _notificationStreamSubscription.cancel();

    return super.close();
  }

  Future<void> _onMarkAsReadNotificationRequested(_MarkAsReadNotificationRequestedEvent event, Emitter<NotificationState> emit) async {
    await state.mapOrNull(
      success: (state) async {
        try {
          final notificationIdsToRemove = event.ids.toSet();

          final updatedNotifications = state.notifications.where((notification) {
            if (notificationIdsToRemove.contains(notification.id)) {
              _notificationRepository.markAsRead(notificationId: notification.id);
              return false;
            } else {
              return true;
            }
          }).toList();

          emit(NotificationState.success(notifications: updatedNotifications));
        } catch (e, s) {
          emit(const NotificationState.error());
        }
      },
    );
  }

  Future<void> _onUpdateNotificationRequested(
    _UpdateNotificationRequestedEvent event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      await state.mapOrNull(
        success: (state) async {
          if (event.notification.otherData?.type != NotificationType.newChatMessage) {
            emit(state.copyWith(
              notifications: [event.notification, ...state.notifications],
            ));
          }
        },
      );
    } catch (e, s) {
      emit(const NotificationState.error());
    }
  }

  Future<void> _onFetchNotificationRequested(
    Emitter<NotificationState> emit,
  ) async {
    try {
      emit(const NotificationState.loading());

      final notifications = await _notificationRepository.getAllNotifications();
      final filteredNotifications = notifications.where((notification) {
        return !notification.isRead && notification.otherData?.type != NotificationType.newChatMessage;
      }).toList();

      emit(NotificationState.success(notifications: filteredNotifications));
    } catch (e, s) {
      emit(const NotificationState.error());
    }
  }
}
