import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class SwitchProfile extends StatelessWidget {
  final Function(ProfileStates) changeTab;
  final ProfileStates currentTab;

  const SwitchProfile({super.key, required this.changeTab, required this.currentTab});

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
  final ProfileStates currentTab;
  final Function(ProfileStates) changeTab;

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

              changeTab(ProfileStates.phys);
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color:
                currentTab.isPhys ? CwColors.primary : Colors.transparent,
              ),
              // Change button text when light changes state.
              child: Text(
                'Физическое лицо',
                style: currentTab.isPhys
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

              changeTab(ProfileStates.legal);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: currentTab.isLegal
                    ? CwColors.primary
                    : Colors.transparent,
              ),
              child: Text(
                'Юридическое лицо',
                style: currentTab.isLegal
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

enum ProfileStates {
  phys,
  legal;

  bool get isPhys => this == ProfileStates.phys;

  bool get isLegal => this == ProfileStates.legal;
}
