import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/modals/subscription_modal.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

class PremiumWidget extends StatelessWidget {
  final DateTime dateEndSubscription;

  const PremiumWidget({super.key, required this.dateEndSubscription});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd.MM.yyyy').format(dateEndSubscription);

    return Column(
      children: [
        Text('Clokwise-Premium', style: CwTextStyles.labelPremium.withColor(CwColors.primary)),
        const SizedBox(height: 16),
        Text('Срок действия вашей подписки до: $formattedDate', style: CwTextStyles.textComment),
        const SizedBox(height: 24),
        CwElevatedButton(
          text: 'Продлить подписку',
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
