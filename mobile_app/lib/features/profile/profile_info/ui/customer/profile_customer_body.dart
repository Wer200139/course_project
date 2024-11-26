import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/profile/common/ui/avatar_widget.dart';
import 'package:clokwise/features/profile/common/ui/main_info_widget.dart';
import 'package:clokwise/features/profile/common/ui/switch_expert.dart';
import 'package:clokwise/features/profile/profile_info/bloc/profile_info_bloc.dart';
import 'package:clokwise/features/profile/profile_info/ui/customer/activity_info_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/customer/company_info_widget.dart';
import 'package:clokwise/features/profile/common/ui/review_customer_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/subscription_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/profile_settings_page.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCustomerBody extends StatefulWidget {
  final int id;

  const ProfileCustomerBody({super.key, required this.id});

  @override
  State<ProfileCustomerBody> createState() => _ProfileCustomerBodyState();
}

class _ProfileCustomerBodyState extends State<ProfileCustomerBody> {
  @override
  void initState() {
    BlocProvider.of<ProfileInfoBloc>(context).add(const ProfileInfoEvent.fetchProfileCustomerRequested());

    super.initState();
  }

  bool isBlocked = false; //переделать на state

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
      builder: (context, state) => state.maybeMap(
        loading: (_) => const PageLoadingIndicator(),
        successCustomer: (state) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CwColors.customWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarWidget(
                    image: state.company.avatar?.image,
                    fullname: '${state.company.firstName} ${state.company.lastName}',
                    rating: state.company.rating,
                    isBlocked: isBlocked,
                    isPremium: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                          success: (state) => state.user.subscriptionUntil != null ? true : false,
                          orElse: () => false,
                        ),
                  ),
                  const SizedBox(height: 18),
                  CwElevatedButton(
                    text: 'Редактировать информацию',
                    onTap: isBlocked
                        ? null
                        : () => {
                      CustomNavigator.showModal(
                        context: context,
                        child: const ProfileSettingsPage(
                          state: ExpertStates.customer,
                        ),
                      ),
                    },
                    block: true,
                    heightStyle: CwButtonHeightEnum.standard,
                  ),
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: MainInfoWidget(phoneNumber: state.company.phoneNumber ?? 'Нет номера', email: state.company.email),
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: CwColors.bgGray),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: state.customer == null
                        ? CompanyInfoWidget(
                            organizationName: state.company.companyName ?? '',
                            inn: '${state.company.companyInn}',
                            webSite: state.company.companyWebsite ?? '',
                            description: state.company.companyDescription ?? '',
                          )
                        : ActivityInfoWidget(
                            webSite: state.customer?.personWebsite ?? 'Нет данных',
                            description: state.customer?.personActivityDescription ?? 'Нет данных'),
                  ),
                ],
              ),
            ),
            ReviewCustomerWidget(id: widget.id, isExpert: false),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CwColors.customWhite,
              ),
              child: const SubscriptionWidget(),
            )
          ],
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
