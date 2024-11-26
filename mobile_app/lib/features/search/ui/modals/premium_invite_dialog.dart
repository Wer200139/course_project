import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/modals/payment_subscription_widget.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PremiumInviteDialog extends StatefulWidget {

  const PremiumInviteDialog({super.key});

  @override
  State<PremiumInviteDialog> createState() => _PremiumInviteDialogState();
}

class _PremiumInviteDialogState extends State<PremiumInviteDialog> {
  bool isSubscription = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              if (!isSubscription) ...[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 28),
                    Text(
                      'Clokwise-Premium',
                      style: CwTextStyles.labelPremium.merge(const TextStyle(color: CwColors.primary)),
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Чтобы приглашать нескольких пользователей одновременно, Вам необходимо оформить подписку Clokwise-Premium',
                        textAlign: TextAlign.center,
                        style: CwTextStyles.textWidget.merge(
                          const TextStyle(fontSize: 14, color: CwColors.startHeaderPrimary),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                    CwElevatedButton(
                      text: 'Приобрести подписку',
                      onTap: () => setState(() {
                        isSubscription = true;
                      }),
                      block: true,
                      heightStyle: CwButtonHeightEnum.standard,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ],
              if (isSubscription) ...[
                const PaymentSubscriptionWidget(),
              ],
              Positioned(
                right: 0,
                top: 12,
                child: CwIconButton(
                    width: 18,
                    height: 18,
                    icon: SvgPicture.asset(Assets.imageCrossClose),
                    onTap: () => {
                      CustomNavigator.maybePop(context: context),
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}