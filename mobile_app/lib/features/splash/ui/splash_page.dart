import 'dart:async';

import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/managers/shared_preferences_manager/shared_preferences_manager.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final _sharePreferencesManager =
      CustomInjector.find<SharedPreferencesManager>();
  late Timer timerSplash;
  bool isAuth = false;

  @override
  void initState() {
    super.initState();

    BlocProvider.of<AuthBloc>(context)
        .add(const AuthEvent.authCheckRequested());

    timerSplash = Timer(const Duration(seconds: 4), _onTimerSplash);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.mapOrNull(
        success: (state) {
          timerSplash.cancel();

          setState(() {
            isAuth = true;
          });

          CustomNavigator.goNamed(
            RouteInfo.home.name,
            params: RouteInfo.home.getParams(
              extraParams: {
                'index': '1',
              },
            ),
          );

          return null;
        },
      ),
      child: const Center(
        child: Text(''),
      ),
    );
  }

  void _onTimerSplash() {
    timerSplash.cancel();

    if (isAuth) {
      return;
    }

    false;

    {
      CustomNavigator.goNamed(
        RouteInfo.onboardingPage.name,
        params: RouteInfo.onboardingPage.getParams(),
      );
    }
  }
}
