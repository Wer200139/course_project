import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:easy_mask/easy_mask.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

enum DateInputMode {
  fullDate(
    hintText: 'дд.мм.гггг',
    mask: '99.99.9999',
  ),
  monthAndYear(
    hintText: 'мм.гггг',
    mask: '99.9999',
  );

  final String hintText;
  final String mask;

  const DateInputMode({
    required this.hintText,
    required this.mask,
  });
}

class DateTextField extends StatelessWidget {
  final FormControl<String> controller;
  final String labelText;
  final DateInputMode inputMode;
  final String? helperText;
  final bool? filled;
  final Color fillColor;

  const DateTextField({
    required this.controller,
    required this.labelText,
    this.inputMode = DateInputMode.fullDate,
    this.helperText,
    this.filled,
    this.fillColor = CwColors.bgGray,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CwTextField(
      controller: controller,
      labelText: labelText,
      hintText: inputMode.hintText,
      helperText: helperText,
      filled: filled,
      fillColor: fillColor,
      inputFormatters: [
        TextInputMask(mask: inputMode.mask),
      ],
      keyboardType: TextInputType.number,
      maxLines: 1,
    );
  }
}
