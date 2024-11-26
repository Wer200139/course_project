import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class SuccessBoostWidget extends StatelessWidget {
  const SuccessBoostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 28),
        const Text(
          'Оплата прошла успешно',
          style: CwTextStyles.headerModal,
        ),
        const SizedBox(height: 24),
        Text(
          'Эксперт ответит на Ваше сообщение в кратчайшие сроки',
          textAlign: TextAlign.center,
          style: CwTextStyles.textWidget.merge(
            const TextStyle(fontSize: 14, color: CwColors.primaryText),
          ),
        ),
        const SizedBox(height: 16),
        CwElevatedButton(
          text: 'Продолжить',
          onTap: () => CustomNavigator.pop(),
          block: true,
          heightStyle: CwButtonHeightEnum.standard,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
