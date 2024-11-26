import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/managers/shared_preferences_manager/shared_preferences_manager.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/profile/common/ui/switch_expert.dart';
import 'package:clokwise/features/profile/profile_info/bloc/profile_info_bloc.dart';
import 'package:clokwise/features/profile/profile_info/ui/customer/profile_customer_body.dart';
import 'package:clokwise/features/profile/profile_info/ui/expert/profile_expert_body.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/profile_user_body.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  final int? userId;
  final ExpertStates? state;
  final bool? isExpert;

  const ProfilePage({
    super.key,
    this.userId,
    this.state,
    this.isExpert = true,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late ExpertStates _currentTab;
  late final sharePreferencesManager;
  late final userId;

  @override
  void initState() {
    _currentTab = widget.state ?? ExpertStates.customer;
    sharePreferencesManager = CustomInjector.find<SharedPreferencesManager>();
    userId = BlocProvider.of<AuthBloc>(context).state.maybeMap(
      success: (state) => state.user.id,
      successLogin: (state) => state.login.user.id,
      orElse: () => 0,
    );

    super.initState();
  }

  bool isPremium = false;

  bool _getIsPremium(BuildContext context) {
    return BlocProvider.of<AuthBloc>(context).state.maybeMap(
      success: (state) {
        if(state.user.hasSubscription != null) {
          return state.user.hasSubscription!;
        }
        else {
          return false;
        }
      },
      orElse: () => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    isPremium = _getIsPremium(context);

    return MultiBlocProvider(
        providers: [
          BlocProvider<ProfileInfoBloc>(
            create: (context) => ProfileInfoBloc(
              snackBarRepository: CustomInjector.find<SnackBarRepository>(),
              profileRepository: ProfileRepository(
                mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
              ),
            ),
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
        appBar: widget.userId != null
            ? CwAppBar(
                backgroundColor: CwColors.primary,
                title: SvgPicture.asset(height: 18, width: 18, Assets.imageCLOKWISE, color: CwColors.customWhite),
                leading: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: CwIconButton(
                    width: 30,
                    height: 30,
                    borderRadius: 6,
                    icon: SvgPicture.asset(Assets.imageArrowLeft),
                    onTap: () => CustomNavigator.pop(),
                    backgroundColor: CwColors.subButtonInverse,
                  ),
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
              )
            : null,
        body: Builder(
          builder: (context) => CWRefreshIndicator(
            onRefresh: () => setState(() {
              if (_currentTab.isExpert && widget.userId == null) {
                BlocProvider.of<ProfileInfoBloc>(context).add(const ProfileInfoEvent.fetchProfileExpertRequested());
              } else if (widget.userId == null) {
                BlocProvider.of<ProfileInfoBloc>(context).add(const ProfileInfoEvent.fetchProfileCustomerRequested());
              }
            }),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  sliver: SliverToBoxAdapter(
                    child: widget.userId != null
                        ? Column(
                            children: [
                              const SizedBox(height: 10),
                              ProfileUserBody(
                                id: widget.userId!,
                                isExpert: widget.isExpert,
                                isPremium: isPremium,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              const SizedBox(height: 10),
                              SwitchExpert(
                                  changeTab: (state) => setState(() {
                                        _currentTab = state;
                                        sharePreferencesManager.setString(key: SharedPreferencesKeys.role, value: state.name);
                                        state.isExpert
                                            ? BlocProvider.of<AuthBloc>(context).add(const AuthEvent.switchToExpert())
                                            : BlocProvider.of<AuthBloc>(context).add(const AuthEvent.switchToCustomer());
                                      }),
                                  currentTab: _currentTab),
                              const SizedBox(height: 10),
                              _currentTab.isExpert ? ProfileExpertBody(id: userId) : ProfileCustomerBody(id: userId),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
