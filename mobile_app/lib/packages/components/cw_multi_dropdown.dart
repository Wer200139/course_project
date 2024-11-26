import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class CwMultiDropdown extends StatelessWidget {
  final String title;
  final String label;
  final List<Widget> elements;
  final ExpansionTileController controller;

  //final PageStorageKey pageKey;

  const CwMultiDropdown({
    super.key,
    required this.title,
    required this.elements,
    //  required this.pageKey,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      // key: pageKey,
      controller: controller,
      title: title.isNotEmpty
          ? Text(
              title,
              style: CwTextStyles.textField,
            )
          : Text(
              label,
              style: CwTextStyles.labelTextField,
            ),
      collapsedBackgroundColor: CwColors.customWhite,
      minTileHeight: 46,
      enableFeedback: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color: CwColors.blueButton,
            width: 1,
          )),
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: CwColors.separatorGray,
          width: 1,
        ),
      ),
      children: elements,
    );
  }
}
