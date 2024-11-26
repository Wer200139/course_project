import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CwComboBox extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>> items;
  final dynamic value;
  final String? hintText;
  final String? helperText;
  final String labelText;
  final TextStyle? labelStyle;
  final EdgeInsets? edgeInsets;
  final TextStyle? textStyle;
  final double? paddingTop;
  final Widget? icon;
  final Color? textColor;
  final ValueChanged<dynamic> onSelected;
  final Color? borderColor;

  const CwComboBox({
    super.key,
    required this.items,
    required this.labelText,
    this.hintText,
    this.helperText,
    this.edgeInsets,
    this.textStyle,
    this.paddingTop = 8,
    this.icon,
    this.textColor = CwColors.primaryText,
    this.labelStyle,
    required this.onSelected,
    this.borderColor = CwColors.separatorGray,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop!),
      child: LayoutBuilder(builder: (context, constraints) {
        return DropdownButtonFormField(
                    value: value,
          isExpanded: true,
          items: items,
          onChanged: onSelected,
          icon: SvgPicture.asset(Assets.imageDown),
          decoration: InputDecoration(
            label: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                labelText,
                style: CwTextStyles.labelTextField.merge(labelStyle),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            isCollapsed: false,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: borderColor!)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: CwColors.blueButton)),
            labelStyle: CwTextStyles.labelTextField,
            errorStyle: CwTextStyles.labelTextField.withColor(CwColors.error),
            errorMaxLines: 2,
            filled: true,
            fillColor: CwColors.customWhite,
            contentPadding:
                edgeInsets ?? const EdgeInsets.only(left: 12, right: 8),
          ),
        )
            /*DropdownMenu(
          width: constraints.maxWidth,
          onSelected: onSelected,
          hintText: hintText,
          helperText: helperText,
          trailingIcon: SvgPicture.asset(Assets.imageDown),
          selectedTrailingIcon: SvgPicture.asset(Assets.imageUp),
          label: Text(labelText,
              style: CwTextStyles.labelTextField.merge(labelStyle)),
          inputDecorationTheme: InputDecorationTheme(
            isCollapsed: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: borderColor!)),
            labelStyle: CwTextStyles.labelTextField,
            errorStyle: CwTextStyles.labelTextField.withColor(CwColors.error),
            errorMaxLines: 2,
            filled: true,
            fillColor: CwColors.customWhite,
            contentPadding:
                edgeInsets ?? const EdgeInsets.symmetric(horizontal: 12),
          ),
          dropdownMenuEntries: dropDownEntries,
        )*/
            ;
      }),
    );
  }
}
