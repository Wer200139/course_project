import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CwTextField<T> extends StatelessWidget {
  final FormControl<T> controller;
  final String? labelText;
  final String? hintText;
  final FocusNode? focusNode;
  final bool hasSpaceForError;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;
  final ReactiveFormFieldCallback<T>? onChanged;
  final bool? filled;
  final Color fillColor;
  final Widget? prefixIcon;
  final String? prefixText;
  final Widget? suffixIcon;
  final Widget? suffixInputDecoration;
  final ReactiveFormFieldCallback<T>? onTap;
  final bool readOnly;
  final bool isDense;
  final String? helperText;
  final ControlValueAccessor<T, String>? valueAccessor;
  final TextCapitalization textCapitalization;
  final TextStyle? hintStyle;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final bool obscureText;
  final Color textColor;
  final bool alignHintAndLabel;
  final double? topPadding;

  const CwTextField({
    required this.controller,
    this.obscureText = false,
    this.border,
    this.focusedBorder,
    this.enabledBorder,
    this.labelText,
    this.hintText,
    this.hasSpaceForError = true,
    this.focusNode,
    this.inputFormatters,
    this.keyboardType,
    this.minLines,
    this.maxLines,
    this.maxLength,
    this.onChanged,
    this.filled,
    this.fillColor = CwColors.primary,
    this.prefixIcon,
    this.prefixText,
    this.suffixIcon,
    this.hintStyle,
    this.onTap,
    this.readOnly = false,
    this.isDense = false,
    this.helperText,
    this.valueAccessor,
    this.textCapitalization = TextCapitalization.none,
    this.textColor = CwColors.primaryText,
    this.alignHintAndLabel = false,
    this.topPadding = 8,
    super.key,
    this.suffixInputDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding!),
      child: Focus(
        onFocusChange: (hasFocus) {
          if (hasFocus) {
            return;
          }

          _trimValue();
        },
        child: Stack(
          children: [
            ReactiveTextField<T>(
              obscureText: obscureText,
              // textInputAction: TextInputAction.done,
              autocorrect: true,
              minLines: minLines,
              onTap: onTap,
              onChanged: onChanged,
              formControl: controller,
              focusNode: focusNode,
              keyboardType: keyboardType,
              readOnly: readOnly,
              inputFormatters: [
                if (T == int) _NaturalNumbersFormatter(),
                ...?inputFormatters,
              ],
              style: CwTextStyles.textField.merge(
                  TextStyle(color: textColor, overflow: TextOverflow.fade)),
              valueAccessor: valueAccessor,
              decoration: InputDecoration(
                isDense: isDense,
                border: border ?? const OutlineInputBorder(),
                focusedBorder: focusedBorder ??
                    OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: CwColors.blueTextField),
                      borderRadius: BorderRadius.circular(10),
                    ),
                counterText: '',
                enabledBorder: enabledBorder ??
                    OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: CwColors.separatorGray),
                      borderRadius: BorderRadius.circular(10),
                    ),
                hintStyle: hintStyle ?? CwTextStyles.labelTextField,
                suffix: suffixInputDecoration,
                hintText: hintText,
                prefixIcon: prefixIcon,
                prefixText: prefixText,
                suffixIcon: suffixIcon,
                labelText: labelText,
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: CwColors.blueTextField),
                  borderRadius: BorderRadius.circular(10),
                ),
                labelStyle: CwTextStyles.labelTextField,
                errorStyle: CwTextStyles.errorTextField,
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: CwColors.error),
                  borderRadius: BorderRadius.circular(10),
                ),
                errorMaxLines: 2,
                filled: filled,
                fillColor: fillColor,
                helperText: helperText ?? (hasSpaceForError ? '' : null),
                alignLabelWithHint: alignHintAndLabel,
              ),
              onEditingComplete: (control) => FocusScope.of(context).unfocus(),
              maxLines: maxLines,
              maxLength: maxLength,
              textCapitalization: textCapitalization,
            ),
            if (maxLength != null)
              Positioned(
                bottom: 34,
                right: 12,
                child: Text(
                  '${(controller.value as String?)?.length.toString() ?? '0'}/$maxLength',
                  style: CwTextStyles.textField.withColor(CwColors.customWhite),
                ),
              ),
          ],
        ),
      ),
    );
  }

  void _trimValue() {
    if (controller.value is! String?) {
      return;
    }

    final String? oldValue = controller.value as String?;

    if (oldValue != null &&
        (oldValue.startsWith(' ') || oldValue.endsWith(' '))) {
      final String trimmedValue = oldValue.trim();

      controller.updateValue(trimmedValue as T?);
    }
  }
}

class _NaturalNumbersFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final regExp = RegExp(r'^0[0-9]');

    if (regExp.hasMatch(newValue.text)) {
      return TextEditingValue(
        text: newValue.text.replaceFirst(RegExp(r'0'), ''),
      );
    }

    return newValue;
  }
}
