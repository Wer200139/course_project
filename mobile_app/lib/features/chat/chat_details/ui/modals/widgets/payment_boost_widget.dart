import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentBoostWidget extends StatelessWidget {
  final int chatId;

  const PaymentBoostWidget({super.key, required this.chatId});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 28),
        Text(
          'Ускорить ответ',
          style: CwTextStyles.labelPremium.merge(const TextStyle(color: CwColors.primary)),
        ),
        const SizedBox(height: 24),
        Text(
          'Администрация свяжется с экспертом, и поспособствует скорейшему ответу на Ваше сообщение',
          textAlign: TextAlign.center,
          style: CwTextStyles.textWidget.merge(
            const TextStyle(fontSize: 14, color: CwColors.startHeaderPrimary),
          ),
        ),
        const SizedBox(height: 16),
        CwElevatedButton(
          text: 'Оплатить ускорение',
          onTap: () => BlocProvider.of<PaymentBloc>(context).add(
            PaymentEvent.payBoostResponseRequested(idChat: chatId),
          ),
          block: true,
          heightStyle: CwButtonHeightEnum.standard,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
