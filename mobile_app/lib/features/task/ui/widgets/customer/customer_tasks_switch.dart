import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class CustomerTasksSwitch extends StatelessWidget {
  final Function(TasksStates) changeTab;
  final TasksStates currentTab;

  const CustomerTasksSwitch({
    super.key,
    required this.changeTab,
    required this.currentTab,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: FractionalOffset.center,
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: CwColors.bgGray,
            ),
            child:
                _SwitchButtonRow(changeTab: changeTab, currentTab: currentTab),
          ),
        ],
      ),
    );
  }
}

class _SwitchButtonRow extends StatelessWidget {
  final TasksStates currentTab;
  final Function(TasksStates) changeTab;

  const _SwitchButtonRow({required this.changeTab, required this.currentTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              // BlocProvider.of<EventsBloc>(context)
              //     .add(const EventsEvent.fetchEventsRequested(model: null));

              changeTab(TasksStates.common);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                    currentTab.isCommon ? CwColors.primary : Colors.transparent,
              ),
              // Change button text when light changes state.
              child: Text(
                'Общие запросы',
                style: currentTab.isCommon
                    ? CwTextStyles.switchBtnText
                    : CwTextStyles.switchBtnText.merge(
                        const TextStyle(color: CwColors.subText),
                      ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 3),
        Expanded(
          child: GestureDetector(
            onTap: () {
              // BlocProvider.of<ServicesBloc>(context).add(
              //   const ServicesEvent.fetchServicesRequested(),
              // );

              changeTab(TasksStates.closed);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                    currentTab.isClosed ? CwColors.primary : Colors.transparent,
              ),
              child: Text(
                'Закрытые запросы',
                style: currentTab.isClosed
                    ? CwTextStyles.switchBtnText
                    : CwTextStyles.switchBtnText.merge(
                        const TextStyle(color: CwColors.subText),
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

enum TasksStates {
  common,
  closed;

  bool get isCommon => this == TasksStates.common;

  bool get isClosed => this == TasksStates.closed;
}
