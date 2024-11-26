import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EndSearchWidget extends StatelessWidget {
  final _searchExpertController = FormControl<String>(
    value: '',
  );

  EndSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 56, left: 32, right: 20),
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: CwColors.primaryText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Найдите уникального специалиста'.toUpperCase(),
            style: CwTextStyles.headerWidget.merge(
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 40),
          /*Row(
            children: [
              Flexible(
                child: CwTextField(
                  controller: _searchExpertController,
                  border: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: CwColors.primarySubText),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: CwColors.primary),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: CwColors.primarySubText),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Найти специалиста',
                  hintStyle: CwTextStyles.labelTextField.merge(
                    const TextStyle(color: CwColors.primarySubText),
                  ),
                  maxLines: 1,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      Assets.imageSearch,
                      width: 4,
                      height: 4,
                      color: CwColors.primarySubText,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                children: [
                  CwElevatedButton(
                    text: 'Найти',
                    onTap: () => {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  const SizedBox(height: 12)
                ],
              ),
            ],
          ),*/
          const SizedBox(height: 40),
          SvgPicture.asset(Assets.imageCLOKWISE),
          const SizedBox(height: 18),
          Row(
            children: [
              CwTextButton(
                text: 'Политика конфиндециальности',
                isSmall: true,
                textStyle: CwTextStyles.textButton.merge(
                  const TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: CwColors.primarySubText,
                      fontSize: 10),
                ),
                primaryColor: CwColors.primarySubText,
                onTap: () => {},
                padding: const EdgeInsets.only(left: 0, top: 2),
              ),
              CwTextButton(
                text: 'Пользовательское соглашение',
                isSmall: true,
                textStyle: CwTextStyles.textButton.merge(
                  const TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: CwColors.primarySubText,
                      fontSize: 10),
                ),
                primaryColor: CwColors.primarySubText,
                padding: const EdgeInsets.only(left: 4, top: 2),
                onTap: () => {},
              ),
            ],
          ),
          const SizedBox(height: 18),
          Text(
            '©2023 CLOKWISE. Все права защищены.',
            style: CwTextStyles.textButton
                .merge(const TextStyle(color: CwColors.primarySubText)),
          ),
          const SizedBox(height: 18),
        ],
      ),
    );
  }
}
