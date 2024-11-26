import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SearchWidget extends StatelessWidget {
  final VoidCallback? onTap;
  final FormControl<String> controller;
  final bool hasSpaceForError;
  final double paddingTop;

  const SearchWidget({
    super.key,
    this.onTap,
    required this.controller,
    this.hasSpaceForError = true,
    this.paddingTop = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CwTextField(
            controller: controller,

            hintText: 'Какие запросы вы ищите',
            hintStyle: CwTextStyles.labelTextField.merge(
              const TextStyle(color: CwColors.subText),
            ),
            hasSpaceForError: hasSpaceForError,
            topPadding: paddingTop,
            maxLines: 1,
            fillColor: CwColors.customWhite,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: CwColors.customWhite),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(
                Assets.imageSearch,
                width: 4,
                height: 4,
                color: CwColors.primary,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            CwElevatedButton(
              text: 'Найти',
              onTap: onTap,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        )
      ],
    );
  }
}
