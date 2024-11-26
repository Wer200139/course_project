import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ExpertTasksSwitch extends StatelessWidget {
  final Function(ResponseStates) changeTab;
  final ResponseStates currentTab;

  const ExpertTasksSwitch({
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
            _ExpertButtonRow(changeTab: changeTab, currentTab: currentTab),
          ),
        ],
      ),
    );
  }
}

class _ExpertButtonRow extends StatelessWidget {
  final ResponseStates currentTab;
  final Function(ResponseStates) changeTab;

  const _ExpertButtonRow({required this.changeTab, required this.currentTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              // BlocProvider.of<EventsBloc>(context)
              //     .add(const EventsEvent.fetchEventsRequested(model: null));

              changeTab(ResponseStates.all);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                currentTab.isAll ? CwColors.primary : Colors.transparent,
              ),
              // Change button text when light changes state.
              child: Text(
                'Все запросы',
                style: currentTab.isAll
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

              changeTab(ResponseStates.mine);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                currentTab.isMine ? CwColors.primary : Colors.transparent,
              ),
              child: Text(
                'Мои отклики',
                style: currentTab.isMine
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

enum ResponseStates {
  all,
  mine;

  bool get isAll => this == ResponseStates.all;

  bool get isMine => this == ResponseStates.mine;
}
