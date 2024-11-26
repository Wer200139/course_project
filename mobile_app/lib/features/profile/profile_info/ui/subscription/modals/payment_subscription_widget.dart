import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentSubscriptionWidget extends StatelessWidget {
  const PaymentSubscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 28),
        Text(
          'Clokwise-Premium',
          style: CwTextStyles.labelPremium.merge(const TextStyle(color: CwColors.primary)),
        ),
        const SizedBox(height: 24),
        Text(
          'Пользуйтесь расширенным функционалом сервиса Clockwise, оформив подписку Clokwise-Premium',
          textAlign: TextAlign.center,
          style: CwTextStyles.textWidget.merge(
            const TextStyle(fontSize: 14, color: CwColors.startHeaderPrimary),
          ),
        ),
        const SizedBox(height: 12),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Стоимость подписки: ',
                style: CwTextStyles.textWidget.merge(
                  const TextStyle(fontSize: 14, color: CwColors.startHeaderPrimary),
                ),
              ),
              const TextSpan(
                text: '1200 ₽',
                style: CwTextStyles.costLabel,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        CwElevatedButton(
          text: 'Приобрести подписку',
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
