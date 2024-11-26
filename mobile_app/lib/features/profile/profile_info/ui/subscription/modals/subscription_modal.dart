import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/modals/payment_subscription_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/modals/success_payment_widget.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubscriptionModal extends StatefulWidget {
  const SubscriptionModal({super.key});

  @override
  State<SubscriptionModal> createState() => _SubscriptionModalState();
}

class _SubscriptionModalState extends State<SubscriptionModal> {
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
              BlocBuilder<PaymentBloc, PaymentState>(
                builder: (context, state) => state.maybeMap(
                  loading: (_) => const ModalLoadingIndicator(),
                  initial: (_) => const PaymentSubscriptionWidget(),
                  successSubscription: (state) => SuccessPaymentWidget(
                    subscriptionUntil: state.subscriptionUntil,
                  ),
                  error: (_) => SizedBox(),
                  orElse: () => SizedBox(),
                ),
              ),
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
