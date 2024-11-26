import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/chat/chat_details/ui/modals/widgets/payment_boost_widget.dart';
import 'package:clokwise/features/chat/chat_details/ui/modals/widgets/success_boost_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/modals/error_subscription_widget.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BoostResponseDialog extends StatefulWidget {
  final int chatId;

  const BoostResponseDialog({super.key, required this.chatId});

  @override
  State<BoostResponseDialog> createState() => _BoostResponseDialogState();
}

class _BoostResponseDialogState extends State<BoostResponseDialog> {
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
                  initial: (_) => PaymentBoostWidget(chatId: widget.chatId),
                  success: (state) => const SuccessBoostWidget(),
                  error: (_) => const ErrorSubscriptionWidget(),
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
