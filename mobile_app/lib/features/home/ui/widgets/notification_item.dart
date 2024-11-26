import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/home/bloc/notification/notification_bloc.dart';
import 'package:clokwise/features/repositories/notification/models/notification_model.dart';
import 'package:clokwise/features/repositories/notification/notification_repository.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/customer_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_page.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;
  final NotificationBloc notificationBloc;

  const NotificationItem({
    super.key,
    required this.notification,
    required this.notificationBloc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: CwColors.customWhite,
      ),
      child: BlocProvider<NotificationBloc>.value(
        value: notificationBloc,
        child: Builder(
          builder: (context) {
            if (notification.otherData != null) {
              switch (notification.otherData!.type) {
                case NotificationType.newGeneralRequest:
                  return _NewRequest(
                    requestId: int.parse(notification.otherData!.requestId!),
                    requestName: notification.text.substring('Создан новый запрос'.length).trim(),
                    onTap: () => BlocProvider.of<NotificationBloc>(context).add(
                      NotificationEvent.markAsReadNotificationRequestedEvent(
                        ids: [notification.id],
                      ),
                    ),
                  );

                case NotificationType.invitedToRequest:
                  return _InviteRequest(
                    requestId: int.parse(notification.otherData!.requestId!),
                    requestName: notification.text.substring('Вас пригласили на задачу'.length).trim(),
                    onTap: () => BlocProvider.of<NotificationBloc>(context).add(
                      NotificationEvent.markAsReadNotificationRequestedEvent(
                        ids: [notification.id],
                      ),
                    ),
                  );

                case NotificationType.newRequestApplication:
                  return _NewApplication(
                    requestId: int.parse(notification.otherData!.requestId!),
                    requestName: notification.text.substring('У Вас новый отклик на запрос'.length).trim(),
                    onTap: () => BlocProvider.of<NotificationBloc>(context).add(
                      NotificationEvent.markAsReadNotificationRequestedEvent(
                        ids: [notification.id],
                      ),
                    ),
                  );

                default:
                  return Text(
                    notification.text,
                    style: CwTextStyles.checkBoxLabel,
                  );
              }
            }
            return Text(
              notification.text,
              style: CwTextStyles.checkBoxLabel,
            );
          },
        ),
      ),
    );
  }
}

class _NewApplication extends StatelessWidget {
  final int requestId;
  final String requestName;
  final VoidCallback onTap;

  const _NewApplication({
    super.key,
    required this.requestId,
    required this.requestName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'У Вас новый отклик на запрос ',
          style: CwTextStyles.checkBoxLabel,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: CwTextButton(
            onTap: () {
              onTap();
              CustomNavigator.showModal(
                context: context,
                child: CustomerTaskDetailsPage(id: requestId),
              );
            },
            text: requestName,
            isSmall: true,
            padding: const EdgeInsets.all(0),
          ),
        ),
      ],
    );
  }
}

class _InviteRequest extends StatelessWidget {
  final int requestId;
  final String requestName;
  final VoidCallback onTap;

  const _InviteRequest({
    super.key,
    required this.requestId,
    required this.requestName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Вас пригласили на задачу ',
          style: CwTextStyles.checkBoxLabel,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: CwTextButton(
            onTap: () {
              onTap();
              CustomNavigator.showModal(
                context: context,
                child: ExpertTaskDetailsPage(id: requestId),
              );
            },
            text: requestName,
            isSmall: true,
            padding: const EdgeInsets.all(0),
          ),
        ),
      ],
    );
  }
}

class _NewRequest extends StatelessWidget {
  final int requestId;
  final String requestName;
  final VoidCallback onTap;

  const _NewRequest({
    super.key,
    required this.requestId,
    required this.requestName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Создан новый запрос ',
          style: CwTextStyles.checkBoxLabel,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: CwTextButton(
            onTap: () {
              onTap();
              CustomNavigator.showModal(
                context: context,
                child: ExpertTaskDetailsPage(id: requestId),
              );
            },
            text: requestName,
            isSmall: true,
            padding: const EdgeInsets.all(0),
          ),
        ),
      ],
    );
  }
}

class _HiddenRequest extends StatelessWidget {
  final int requestId;
  final String requestName;

  const _HiddenRequest({
    super.key,
    required this.requestId,
    required this.requestName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Ваш запрос ',
          style: CwTextStyles.checkBoxLabel,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 1),
          child: CwTextButton(
            onTap: () => CustomNavigator.showModal(
              context: context,
              child: ExpertTaskDetailsPage(id: requestId),
            ),
            text: requestName,
            isSmall: true,
            padding: const EdgeInsets.all(0),
          ),
        ),
        const Text(
          ' был скрыт из выдачи',
          style: CwTextStyles.checkBoxLabel,
        ),
      ],
    );
  }
}
