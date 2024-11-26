import 'package:clokwise/features/home/bloc/notification/notification_bloc.dart';
import 'package:clokwise/features/home/ui/widgets/notification_item.dart';
import 'package:clokwise/flutter_popup-3.3.0/lib/flutter_popup.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (notContext, state) => state.maybeMap(
        success: (state) {
          return CustomPopup(
            showArrow: false,
            onTap: () {
              setState(() {
                _isTapped = !_isTapped;
              });

              if (_isTapped) {
                final notificationsToMarkAsRead = state.notifications
                    .where((notification) => notification.otherData == null)
                    .map((notification) => notification.id)
                    .toList();

                if (notificationsToMarkAsRead.isNotEmpty) {
                  BlocProvider.of<NotificationBloc>(notContext).add(
                    NotificationEvent.markAsReadNotificationRequestedEvent(
                      ids: notificationsToMarkAsRead,
                    ),
                  );
                }
              }
            },
            onDismissed: () => setState(() {
              _isTapped = !_isTapped;
            }),
            content: Container(
              constraints: const BoxConstraints(
                minWidth: double.infinity,
                maxHeight: 400,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: state.notifications.length,
                separatorBuilder: (context, index) => const Divider(
                  color: CwColors.separatorGrayV2,
                ),
                itemBuilder: (context, index) => NotificationItem(
                  notification: state.notifications[index],
                  notificationBloc: BlocProvider.of<NotificationBloc>(notContext),
                ),
              ),
            ),
            child: Badge(
              backgroundColor: CwColors.customWhite,
              label: Text(
                '${state.notifications.length}',
                style: const TextStyle(
                  color: CwColors.primaryText,
                ),
              ),
              isLabelVisible: state.notifications.isNotEmpty,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                decoration: BoxDecoration(
                  color: _isTapped ? CwColors.customWhite : CwColors.subButtonInverse,
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
                margin: const EdgeInsets.only(left: 4, bottom: 4),
                width: 30,
                height: 30,
                child: Center(
                  child: SvgPicture.asset(
                    _isTapped ? Assets.imageNotificationNew : Assets.imageNotification,
                  ),
                ),
              ),
            ),
          );
        },
        orElse: () => const SizedBox(),
      ),
    );
  }
}
