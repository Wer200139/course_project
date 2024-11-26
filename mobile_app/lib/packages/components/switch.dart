import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class CwSwitch extends StatelessWidget {
  final Function(MainPageStates) changeTab;
  final MainPageStates currentTab;

  const CwSwitch({super.key, required this.changeTab, required this.currentTab});

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
  final MainPageStates currentTab;
  final Function(MainPageStates) changeTab;

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

              changeTab(MainPageStates.expert);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                    currentTab.isExpert ? CwColors.primary : Colors.transparent,
              ),
              // Change button text when light changes state.
              child: Text(
                'Я эксперт',
                style: currentTab.isExpert
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

              changeTab(MainPageStates.customer);
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: currentTab.isSearcher
                    ? CwColors.primary
                    : Colors.transparent,
              ),
              child: Text(
                'Я ищу эксперта',
                style: currentTab.isSearcher
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

enum MainPageStates {
  expert,
  customer;

  bool get isExpert => this == MainPageStates.expert;

  bool get isSearcher => this == MainPageStates.customer;
}
