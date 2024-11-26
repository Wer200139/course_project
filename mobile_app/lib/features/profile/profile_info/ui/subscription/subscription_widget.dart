import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/widgets/no_premium_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/widgets/premium_widget.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubscriptionWidget extends StatefulWidget {
  const SubscriptionWidget({super.key});

  @override
  State<SubscriptionWidget> createState() => _SubscriptionWidgetState();
}

class _SubscriptionWidgetState extends State<SubscriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) => state.maybeMap(
        success: (state) => state.user.hasSubscription == true
            ? PremiumWidget(dateEndSubscription: state.user.subscriptionUntil!)
            : const NoPremiumWidget(),
        orElse: () => SizedBox(),
      ),
    );
  }
}
