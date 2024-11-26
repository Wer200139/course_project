import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';

class CwDropdown<T> extends StatelessWidget {
  final List<CoolDropdownItem<T>> dropdownList;
  final CoolDropdownItem<T>? defaultItem;
  final String label;
  final void Function(T value) onChange;
  final DropdownController<T> controller;

  const CwDropdown({
    super.key,
    required this.defaultItem,
    required this.controller,
    required this.label,
    required this.dropdownList,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CoolDropdown<T>(
          dropdownItemOptions: const DropdownItemOptions(
            selectedTextStyle: CwTextStyles.textField,
            boxDecoration: BoxDecoration(color: CwColors.blueButton),
            selectedBoxDecoration: BoxDecoration(color: CwColors.separatorGray),
          ),
          resultOptions: const ResultOptions(
            height: 50,
            //placeholder: 'Отрасль',

            width: double.infinity,
            boxDecoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border(
                top: BorderSide(width: 1, color: CwColors.separatorGray),
                bottom: BorderSide(width: 1, color: CwColors.separatorGray),
                left: BorderSide(width: 1, color: CwColors.separatorGray),
                right: BorderSide(width: 1, color: CwColors.separatorGray),
              ),
            ),
            openBoxDecoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border(
                top: BorderSide(width: 1, color: CwColors.blueButton),
                bottom: BorderSide(width: 1, color: CwColors.blueButton),
                left: BorderSide(width: 1, color: CwColors.blueButton),
                right: BorderSide(width: 1, color: CwColors.blueButton),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1a9E9E9E),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          ),
          dropdownTriangleOptions: const DropdownTriangleOptions(height: 0),
          defaultItem: defaultItem,
          dropdownList: dropdownList,
          controller: controller,
          onChange: (value) => onChange(value),
        ),
        Positioned(
          bottom: 42,
          left: 14,
          child: Container(
            color: CwColors.customWhite,
            child: Text(
              ' $label ',
              style: CwTextStyles.labelTextField.merge(
                const TextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
