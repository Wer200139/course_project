import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/modals/subscription_modal.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoPremiumWidget extends StatelessWidget {
  const NoPremiumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Базовый профиль',
            style: CwTextStyles.labelPremium
                .withColor(CwColors.separatorGray)),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 62),
          child: Text(
            'Насладитесь полным функционалом нашего сервиса, оформив подписку Clokwise-Premium',
            style: CwTextStyles.textComment,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        CwElevatedButton(
          text: 'Приобрести подписку',
          block: true,
          heightStyle: CwButtonHeightEnum.standard,
          onTap: () => {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return BlocProvider<PaymentBloc>.value(
                  value: context.read<PaymentBloc>(),
                  child: const SubscriptionModal(),
                );
              },
            )
          },
        )
      ],
    );
  }
}
