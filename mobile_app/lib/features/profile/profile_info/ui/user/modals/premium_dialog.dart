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

class PremiumDialog extends StatefulWidget {
  final int idProfile;

  const PremiumDialog({super.key, required this.idProfile});

  @override
  State<PremiumDialog> createState() => _PremiumDialogState();
}

class _PremiumDialogState extends State<PremiumDialog> {
  bool isSubscription = false;
  bool isOnceView = false;

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
              if (!isSubscription && !isOnceView) ...[
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
                        'Чтобы увидеть все места работы экспертов, вам необходимо оформить подписку Clokwise-Premium, или оплатить разовый просмотр мест работы эксперта',
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
                    CwElevatedButton(
                      style: ElevatedButtonStyle.secondary,
                      text: 'Оплатить разовый просмотр',
                      onTap: () => setState(() {
                        isOnceView = true;
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
              if (isOnceView) ...[
                _OnceViewWidget(idProfile: widget.idProfile),
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

class _OnceViewWidget extends StatelessWidget {
  final int idProfile;

  const _OnceViewWidget({super.key, required this.idProfile});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 28),
        Text(
          'Оплатить разовый просмотр',
          style: CwTextStyles.labelPremium.merge(const TextStyle(color: CwColors.primary, fontSize: 20)),
        ),
        const SizedBox(height: 24),
        Text(
          'После оплаты разового просмотра, вы сможете увидеть все места работы экспертов',
          textAlign: TextAlign.center,
          style: CwTextStyles.textWidget.merge(
            const TextStyle(fontSize: 14, color: CwColors.startHeaderPrimary),
          ),
        ),
        const SizedBox(height: 16),
        CwElevatedButton(
          text: 'Оплатить разовый просмотр',
          onTap: () => BlocProvider.of<PaymentBloc>(context).add(
            PaymentEvent.payProfileViewRequested(idProfile: idProfile),
          ),
          block: true,
          heightStyle: CwButtonHeightEnum.standard,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
