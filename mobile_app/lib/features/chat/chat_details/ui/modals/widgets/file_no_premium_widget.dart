import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FileNoPremiumWidget extends StatelessWidget {
  const FileNoPremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 28),
        const Text('Ошибка загрузки', style: CwTextStyles.headerModal),
        const SizedBox(height: 24),
        Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
              text: 'Базовый профиль позволяет загружать файлы размером ',
              style: CwTextStyles.textWidget,
              children: [
                TextSpan(
                  text: 'не более 10 мб. ',
                  style: CwTextStyles.textWidget.merge(
                    const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const TextSpan(text: 'Оформите подписку, чтобы снять ограничение на загрузку файлов.'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 32),
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
