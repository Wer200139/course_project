import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorSubscriptionWidget extends StatelessWidget {
  const ErrorSubscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 28),
        Text(
          'Оплата не прошла',
          style: CwTextStyles.headerModal.withColor(CwColors.subText),
        ),
        const SizedBox(height: 24),
        Text(
          'Пожалуйста, проверьте правильность реквизитов и повторите попытку',
          textAlign: TextAlign.center,
          style: CwTextStyles.textWidget.merge(
            const TextStyle(fontSize: 14, color: CwColors.startHeaderPrimary),
          ),
        ),
        const SizedBox(height: 16),
        CwElevatedButton(
          text: 'Повторить оплату',
          onTap: () => BlocProvider.of<PaymentBloc>(context).add(
            const PaymentEvent.prolongSubscriptionRequested(),
          ),
          block: true,
          heightStyle: CwButtonHeightEnum.standard,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
