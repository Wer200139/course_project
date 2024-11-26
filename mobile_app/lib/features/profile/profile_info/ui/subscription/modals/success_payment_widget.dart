import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

class SuccessPaymentWidget extends StatelessWidget {
  final DateTime subscriptionUntil;

  const SuccessPaymentWidget({super.key, required this.subscriptionUntil});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd.MM.yyyy').format(subscriptionUntil);

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
          'Срок действия Вашей подписки до: $formattedDate',
          textAlign: TextAlign.center,
          style: CwTextStyles.textWidget.merge(
            const TextStyle(fontSize: 14, color: CwColors.primaryText),
          ),
        ),
        const SizedBox(height: 16),
        CwElevatedButton(
          text: 'Продолжить',
          onTap: () {
            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.authCheckRequested());
            CustomNavigator.pop();
          },
          block: true,
          heightStyle: CwButtonHeightEnum.standard,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
