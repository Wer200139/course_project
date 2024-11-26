import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/repositories/search/search_repository.dart';
import 'package:clokwise/features/search/bloc/search_bloc.dart';
import 'package:clokwise/features/search/ui/widgets/search_body.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/snackbar/ui/show_snack_bar.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _getIsPremium(BuildContext context) {
    return BlocProvider.of<AuthBloc>(context).state.maybeMap(
          success: (state) {
            if (state.user.hasSubscription != null) {
              return state.user.hasSubscription!;
            } else {
              return false;
            }
          },
          orElse: () => false,
        );
  }

  late bool isPremium;

  @override
  void initState() {
    isPremium = _getIsPremium(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchBloc>(
          create: (context) => SearchBloc(
            searchRepository: SearchRepository(mainNetworkClient: CustomInjector.find<MainNetworkClient>()),
            classificatorRepository: ClassificatorRepository(mainNetworkClient: CustomInjector.find<MainNetworkClient>()),
            chatRepository: ChatRepository(mainNetworkClient: CustomInjector.find<MainNetworkClient>()),
            snackBarRepository: CustomInjector.find<SnackBarRepository>(),
          )..add(const SearchEvent.getIndustries()),
        ),
        BlocProvider<PaymentBloc>(
          create: (context) => PaymentBloc(
            paymentRepository: PaymentRepository(
              mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
            ),
            snackBarRepository: CustomInjector.find<SnackBarRepository>(),
          ),
        ),
      ],
      child: CWScaffold(
        body: BlocListener<PaymentBloc, PaymentState>(
          listener: (context, state) => state.maybeMap(
              successSubscription: (state) => setState(() {
                    isPremium = _getIsPremium(context);
                  }),
              orElse: () => {}),
          child: SearchBody(
            isPremium: _getIsPremium(context),
          ),
        ),
      ),
    );
  }
}
