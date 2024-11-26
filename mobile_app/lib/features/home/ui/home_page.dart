import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/common/utils/context_holder.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_list/ui/chat_list_page.dart';
import 'package:clokwise/features/home/bloc/notification/notification_bloc.dart';
import 'package:clokwise/features/home/ui/widgets/notification_widget.dart';
import 'package:clokwise/features/profile/common/ui/lazy_indexed_stack.dart';
import 'package:clokwise/features/profile/common/ui/switch_expert.dart';
import 'package:clokwise/features/profile/profile_info/ui/profile_page.dart';
import 'package:clokwise/features/repositories/notification/notification_repository.dart';
import 'package:clokwise/features/search/ui/search_page.dart';
import 'package:clokwise/features/task/ui/task_page.dart';
import 'package:clokwise/flutter_popup-3.3.0/lib/flutter_popup.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/custom_bottom_navigation_bar.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  final int index;

  const MyHomePage({super.key, required this.index});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int get _index => widget.index;

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    ContextHolder.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) => authState.maybeMap(
        success: (state) {
          _pages = state.isExpert
              ? [
                  const ChatListPage(isExpert: true),
                  const ProfilePage(state: ExpertStates.expert),
                  const TaskPage(isExpert: true),
                  const Text('Здесь будет страница'),
                  const Text('Здесь будет страница'),
                ]
              : [
                  const ChatListPage(isExpert: false),
                  const ProfilePage(state: ExpertStates.customer),
                  const SearchPage(),
                  const TaskPage(isExpert: false),
                  const Text('Здесь будет страница'),
                ];

          return BlocProvider(
            create: (context) => NotificationBloc(
              notificationRepository: NotificationRepository(
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
            )..add(const NotificationEvent.fetchNotificationRequested()),
            child: CWScaffold(
              appBar: CwAppBar(
                backgroundColor: CwColors.primary,
                title: SvgPicture.asset(
                  height: 18,
                  width: 18,
                  Assets.imageCLOKWISE,
                  color: CwColors.customWhite,
                ),
                leading: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: const NotificationWidget(),
                ),
                actions: [
                  Row(
                    children: [
                      const Text(
                        'Ru',
                        style: TextStyle(color: CwColors.customWhite),
                      ),
                      CwIconButton(
                        icon: SvgPicture.asset(
                          Assets.imageDown,
                          color: CwColors.customWhite,
                        ),
                        onTap: () => setState(() {}),
                      )
                    ],
                  )
                ],
              ),
              body: PopScope(
                canPop: true,
                onPopInvokedWithResult: (didPop, some) async {
                  if (_index == 0) {
                    return;
                  }

                  CustomNavigator.goNamed(
                    RouteInfo.home.name,
                    params: RouteInfo.home.getParams(),
                  );

                  return;
                },
                child: LazyLoadIndexedStack(
                  index: _index,
                  children: _pages,
                ),
              ),
              bottomNavigationBar: CustomBottomNavigationBar(index: _index, isExpert: state.isExpert),
            ),
          );
        },
        orElse: () => const Text('Походу произошла ошибка. Упс... Мой косяк'),
      ),
    );
  }
}
