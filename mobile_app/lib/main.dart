import 'dart:async';

import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/injectable/dependency_manager.dart';
import 'package:clokwise/common/managers/local_notification_manager/local_notification_manager.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/go_router_settings.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_list/bloc/chat_list_bloc.dart';
import 'package:clokwise/features/repositories/auth/auth_repository.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/snackbar/bloc/snack_bar_bloc.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/snackbar/ui/show_snack_bar.dart';
import 'package:clokwise/firebase_options.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

List<List<int>> classificatorsIds = [];

///TODO: Использование кортежа, но лучше заменить классом

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterDownloader.initialize(debug: true, ignoreSsl: false);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await LocalNotificationManager.init();
  await DependencyManager.initDependencies();
  ErrorWidget.builder = (error) => SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text(
                error.toString(),
              ),
              Text(
                '${error.exception}',
              ),
              Text(
                '${error.library}',
              ),
              Text(
                '${error.stack}',
              ),
              Text(
                '${error.summary}',
              ),
            ],
          ),
        ),
      );
  if (kReleaseMode)
    ErrorWidget.builder = (error) => SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  error.toString(),
                ),
                Text(
                  '${error.exception}',
                ),
                Text(
                  '${error.library}',
                ),
                Text(
                  '${error.stack}',
                ),
                Text(
                  '${error.summary}',
                ),
              ],
            ),
          ),
        );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _unFocus(context: context),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SnackBarBloc>(
            create: (context) => SnackBarBloc(
              snackBarRepository: CustomInjector.find<SnackBarRepository>(),
            ),
          ),
          BlocProvider<AuthBloc>(
            create: (context) => AuthBloc(
              authRepository: AuthRepository(
                secureStorageManager: CustomInjector.find<SecureStorageManager>(),
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
              snackBarRepository: CustomInjector.find<SnackBarRepository>(),
              chatRepository: ChatRepository(
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
            ),
          ),
          BlocProvider<ChatListBloc>(
            create: (context) => ChatListBloc(
              snackBarRepository: CustomInjector.find<SnackBarRepository>(),
              chatRepository: ChatRepository(
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
            ),
          ),
        ],
        child: MaterialApp.router(
            title: 'Clockwise',
            theme: ThemeData(
              fontFamily: 'Inter',
              colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF0F3F7)),
              useMaterial3: true,
            ),
            routerConfig: GoRouterSettings.router,
            builder: (context, child) {
              return BlocListener<SnackBarBloc, SnackBarState>(
                listener: _snackBarBlocListener,
                child: child ?? const SizedBox(),
              );
            }),
      ),
    );
  }
}

void _snackBarBlocListener(BuildContext context, SnackBarState state) {
  state.mapOrNull(
    push: (state) => showTopSnackBar(
        context: context,
        content: Text(
          state.text,
          style: CwTextStyles.textComment,
        ),
        color: CwColors.customWhite),
    info: (state) => showSnackBar(
        context: context,
        content: Text(state.text),
        color: CwColors.customBrown,
        image: Assets.imageBlocked,
        header: 'Info',
        isYellow: false),
    warning: (state) => showSnackBar(
        context: context,
        content: Text(state.text),
        color: CwColors.customYellow,
        image: Assets.imageAlert,
        header: 'Warning',
        isYellow: true),
    success: (state) => showSnackBar(
        context: context,
        content: Text(state.text),
        color: CwColors.customGreen,
        image: Assets.imageCheck,
        header: 'Succes',
        isYellow: false),
    error: (state) => showSnackBar(
        context: context,
        content: Text(
          state.text,
          overflow: TextOverflow.visible,
        ),
        /*LayoutBuilder(
          builder: (context, constraints) {
            */ /*return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width  - 170),
              child: Text(
                state.text,
                overflow: TextOverflow.fade,
              ),
            );*/ /*
          },*/
        color: CwColors.error,
        image: Assets.imageBlocked,
        header: 'Error',
        isYellow: false),
  );
}

void _unFocus({required BuildContext context}) {
  final currentScope = FocusScope.of(context);

  if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
