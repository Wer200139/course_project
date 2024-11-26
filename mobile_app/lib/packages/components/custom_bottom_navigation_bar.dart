import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int index;

  final _tabPagesInBottomBar = 5;
  final bool isExpert;

  bool get _isPageInBottomBar => index < _tabPagesInBottomBar;

  const CustomBottomNavigationBar({
    required this.index,
    required this.isExpert,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: CwColors.customWhite, border: Border(top: BorderSide(color: CwColors.customWhite, width: 1))),
      child: BottomNavigationBar(
        elevation: 10,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: BlocProvider.of<AuthBloc>(context).state.mapOrNull(
                  success: (state) {
                    final unreadMessages = isExpert ? state.unreadMessagesExpert ?? 0 : state.unreadMessagesCustomer ?? 0;
                    return Badge(
                      backgroundColor: CwColors.primary,
                      isLabelVisible: unreadMessages != 0,
                      label: Text('$unreadMessages'),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          Assets.imageMessage,
                          width: 32,
                          height: 32,
                          colorFilter: const ColorFilter.mode(CwColors.separatorGray, BlendMode.srcIn),
                        ),
                      ),
                    );
                  },
                ) ??
                const SizedBox(),
            backgroundColor: CwColors.customWhite,
            activeIcon: BlocProvider.of<AuthBloc>(context).state.mapOrNull(
                  success: (state) {
                    final unreadMessages = isExpert ? state.unreadMessagesExpert ?? 0 : state.unreadMessagesCustomer ?? 0;
                    return Badge(
                      backgroundColor: CwColors.primary,
                      isLabelVisible: unreadMessages != 0,
                      label: Text('$unreadMessages'),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          Assets.imageMessage,
                          width: 32,
                          height: 32,
                          colorFilter: const ColorFilter.mode(CwColors.primary, BlendMode.srcIn),
                        ),
                      ),
                    );
                  },
                ) ??
                const SizedBox(),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                Assets.imageProfileBottomBar,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(CwColors.separatorGray, BlendMode.srcIn),
              ),
            ),
            backgroundColor: CwColors.customWhite,
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                Assets.imageProfileBottomBar,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(CwColors.primary, BlendMode.srcIn),
              ),
            ),
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: SvgPicture.asset(
                  isExpert ? Assets.imageRequestAlt : Assets.imageSearchBottomBar,
                  width: 32,
                  height: 32,
                  colorFilter: const ColorFilter.mode(CwColors.separatorGray, BlendMode.srcIn),
                ),
              ),
              /* BlocProvider.of<AuthBloc>(context).state.mapOrNull(
                  success: (state) {
                    final unreadedMessages = state.unreadedMessages ?? 0;
                    return Badge(
                      isLabelVisible: unreadedMessages != 0,
                      label: Text(unreadedMessages.toString()),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: SvgPicture.asset(
                          Assets.iconsMessageChatSquare,
                          width: 32,
                          height: 32,
                          colorFilter: const ColorFilter.mode(
                              CustomColors.iconGrey, BlendMode.srcIn),
                        ),
                      ),
                    );
                  },
                ) ?? const SizedBox(),*/
              backgroundColor: CwColors.customWhite,
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: SvgPicture.asset(
                  isExpert ? Assets.imageRequestAlt : Assets.imageSearchBottomBar,
                  width: 32,
                  height: 32,
                  colorFilter: const ColorFilter.mode(CwColors.primary, BlendMode.srcIn),
                ),
              )),
          if (!isExpert) ...[
            BottomNavigationBarItem(
              label: '',
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: SvgPicture.asset(
                  Assets.imageRequestBottomBar,
                  width: 32,
                  height: 32,
                  colorFilter: const ColorFilter.mode(CwColors.separatorGray, BlendMode.srcIn),
                ),
              ),
              backgroundColor: CwColors.customWhite,
              activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: SvgPicture.asset(
                  Assets.imageRequestBottomBar,
                  width: 32,
                  height: 32,
                  colorFilter: const ColorFilter.mode(CwColors.primary, BlendMode.srcIn),
                ),
              ),
            )
          ],
          BottomNavigationBarItem(
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                Assets.imageNewsBottomBar,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(CwColors.separatorGray, BlendMode.srcIn),
              ),
            ),
            backgroundColor: CwColors.customWhite,
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                Assets.imageNewsBottomBar,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(CwColors.primary, BlendMode.srcIn),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                Assets.imageLogOut,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(CwColors.separatorGray, BlendMode.srcIn),
              ),
            ),
            backgroundColor: CwColors.customWhite,
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: SvgPicture.asset(
                Assets.imageLogOut,
                width: 32,
                height: 32,
                colorFilter: const ColorFilter.mode(CwColors.primary, BlendMode.srcIn),
              ),
            ),
          )
        ],
        showUnselectedLabels: false,
        showSelectedLabels: false,
        backgroundColor: CwColors.customWhite,
        selectedItemColor: _isPageInBottomBar ? CwColors.primary : CwColors.separatorGray,
        currentIndex: _isPageInBottomBar ? index : 0,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if ((isExpert == false && index == 5) || (isExpert == true && index == 4)) {
            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.logoutRequested());
            CustomNavigator.goNamed(
              RouteInfo.onboardingPage.name,
              params: RouteInfo.onboardingPage.getParams(),
            );
            return;
          }

          /*
          if (isCompany && index == 0) {
            showSnackBar(
              context: context,
              content: Text(AppLocalizations.of(context)!.cantLookFirmInfo),
            );

            return;
          }*/

          CustomNavigator.goNamed(
            RouteInfo.main.name,
            params: RouteInfo.main.getParams(
              extraParams: {
                'index': index.toString(),
              },
            ),
          );
        },
      ),
    );
  }
}
