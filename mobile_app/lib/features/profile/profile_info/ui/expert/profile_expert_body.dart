import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/profile/common/ui/avatar_widget.dart';
import 'package:clokwise/features/profile/common/ui/main_info_widget.dart';
import 'package:clokwise/features/profile/common/ui/switch_expert.dart';
import 'package:clokwise/features/profile/profile_info/bloc/profile_info_bloc.dart';
import 'package:clokwise/features/profile/common/ui/review_customer_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/expert/education_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/expert/experience_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/subscription/subscription_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/profile_settings_page.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileExpertBody extends StatefulWidget {
  final int id;

  const ProfileExpertBody({
    super.key,
    required this.id,
  });

  @override
  State<ProfileExpertBody> createState() => _ProfileExpertBodyState();
}

class _ProfileExpertBodyState extends State<ProfileExpertBody> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<ProfileInfoBloc>(context).add(const ProfileInfoEvent.fetchProfileExpertRequested());
  }

  bool isBlocked = false; //TODO переделать state

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
      builder: (context, state) => state.maybeMap(
        loading: (_) => const PageLoadingIndicator(),
        successExpert: (state) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 8),
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
                    fullname: '${state.expert.firstName} ${state.expert.lastName}',
                    image: state.expert.avatar?.image,
                    rating: state.expert.rating,
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
                                  state: ExpertStates.expert,
                                ),
                              )
                            },
                    block: true,
                    heightStyle: CwButtonHeightEnum.standard,
                  ),
                  const SizedBox(height: 18),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: MainInfoWidget(
                      phoneNumber: state.expert.phoneNumber ?? 'Нет номера',
                      email: state.expert.email,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: CwColors.bgGray),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Образование', style: CwTextStyles.headerProfile),
                        const SizedBox(height: 12),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.expert.education.length,
                          itemBuilder: (context, index) => EducationWidget(
                            level: state.educationsLevels[state.expert.education[index].educationLevel - 2].name,
                            nameInstitutation: state.expert.education[index].institutionName,
                            degree: state.educationsDegrees[state.expert.education[index].educationDegree - 1].name,
                            nameDepartment: state.expert.education[index].departmentName,
                            nameSpeciality: state.expert.education[index].specialityName,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: CwColors.bgGray),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Опыт', style: CwTextStyles.headerProfile),
                        const SizedBox(height: 12),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.expert.experience.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              ExperienceWidget(
                                nameOrganization: state.expert.experience[index].organizationName,
                                startJob: state.expert.experience[index].dateStart,
                                endJob: state.expert.experience[index].dateEnd,
                                postName: state.expert.experience[index].position,
                                segments: state.expert.experience[index].segments,
                              ),
                              if (index < state.expert.experience.length - 1) ...[
                                const SizedBox(height: 12),
                                const Divider(color: CwColors.bgGray),
                                const SizedBox(height: 4),
                              ]
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ReviewCustomerWidget(id: widget.id, isExpert: true),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CwColors.customWhite,
              ),
              child: const SubscriptionWidget(),
            ),
            const SizedBox(height: 12),
          ],
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
