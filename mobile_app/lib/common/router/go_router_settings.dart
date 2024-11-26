import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/features/auth/ui/start_page.dart';
import 'package:clokwise/features/home/ui/home_page.dart';
import 'package:clokwise/features/not_found/ui/not_found_page.dart';
import 'package:clokwise/features/splash/ui/splash_page.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class GoRouterSettings {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: RouteInfo.splash.path,
        name: RouteInfo.splash.name,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: RouteInfo.home.path,
        name: RouteInfo.home.name,
        builder: (context, state) => MyHomePage(
          index: int.parse(state.pathParameters['index']!),
        ),
        routes: const [],
      ),
      GoRoute(
        path: RouteInfo.onboardingPage.path,
        name: RouteInfo.onboardingPage.name,
        builder: (context, state) => const StartPage(),
      ), /*
      GoRoute(
        path: RouteInfo.loginPage.path,
        name: RouteInfo.loginPage.name,
        builder: (context, state) => const LoginPage(),
      ),*/
    ],
    errorBuilder: (_, __) => const NotFoundPage(),
    initialLocation: RouteInfo.splash.path,
    debugLogDiagnostics: kDebugMode,
  );
}
