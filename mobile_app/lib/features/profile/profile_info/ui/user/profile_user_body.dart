import 'dart:ui';

import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/profile/common/ui/avatar_widget.dart';
import 'package:clokwise/features/profile/common/ui/main_info_widget.dart';
import 'package:clokwise/features/profile/profile_info/bloc/profile_info_bloc.dart';
import 'package:clokwise/features/profile/common/ui/review_customer_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/customer/activity_info_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/customer/company_info_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/expert/education_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/expert/experience_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/modals/premium_dialog.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/modals/task_dialog.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/widgets/user_info_widget.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/repositories/profile/models/experience_model.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/snackbar/ui/show_snack_bar.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileUserBody extends StatefulWidget {
  final int id;
  final bool? isExpert;
  final bool isPremium;

  const ProfileUserBody({
    super.key,
    required this.id,
    this.isExpert = true,
    required this.isPremium,
  });

  @override
  State<ProfileUserBody> createState() => _ProfileUserBodyState();
}

class _ProfileUserBodyState extends State<ProfileUserBody> {
  bool isBlocked = false; // TODO переделать на state
  bool isShow = true;

  @override
  void initState() {
    super.initState();

    if (widget.isExpert!) {
      BlocProvider.of<ProfileInfoBloc>(context).add(
        ProfileInfoEvent.fetchProfileUserExpertRequested(
          id: widget.id,
        ),
      );
    } else {
      BlocProvider.of<ProfileInfoBloc>(context).add(
        ProfileInfoEvent.fetchProfileUserCustomerRequested(
          id: widget.id,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInfoBloc, ProfileInfoState>(
      builder: (context, state) => state.maybeMap(
        loading: (_) => const PageLoadingIndicator(),
        successCustomer: (state) => Column(
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
                    fullname: state.company.companyName ?? '${state.company.firstName} ${state.company.lastName}',
                    image: state.company.avatar?.image,
                    rating: state.company.rating,
                    isUser: true,
                    isBlocked: isBlocked,
                  ),
                  const SizedBox(height: 12),
                  const Divider(color: CwColors.bgGray),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: UserInfoWidget(
                      phoneNumber: state.company.phoneNumber ?? 'Нет номера',
                      email: state.company.email,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Divider(color: CwColors.bgGray),
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: state.company.companyInn != null
                        ? CompanyInfoWidget(
                            organizationName: state.company.companyName!,
                            inn: '${state.company.companyInn!}',
                            webSite: state.company.companyWebsite!,
                            description: state.company.companyDescription!,
                          )
                        : ActivityInfoWidget(
                            webSite: state.customer!.personWebsite ?? 'Отсутствует веб-сайт',
                            description: state.customer!.personActivityDescription ?? 'Отсутствует описание',
                          ),
                  ),
                ],
              ),
            ),
            ReviewCustomerWidget(
              id: widget.id,
              isExpert: false,
            ),
            const SizedBox(height: 12),
          ],
        ),
        successExpert: (state) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CwColors.customWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AvatarWidget(
                    fullname: 'Эксперт ${state.expert.firstName}',
                    image: state.expert.avatar?.image,
                    rating: state.expert.rating,
                    isUser: true,
                    isBlocked: isBlocked,
                  ),
                  const SizedBox(height: 18),
                  CwElevatedButton(
                    text: 'Пригласить на задачу',
                    onTap: isBlocked
                        ? null
                        : () => {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return BlocProvider(
                                    create: (context) => TaskBloc(
                                      taskRepository: TaskRepository(
                                        mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                      ),
                                      snackBarRepository: CustomInjector.find<SnackBarRepository>(),
                                      classificatorRepository: ClassificatorRepository(
                                        mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                      ),
                                      chatRepository: ChatRepository(
                                        mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                      ),
                                    )
                                      ..add(TaskEvent.getTasksForExpertRequested(userId: widget.id))
                                      ..add(const TaskEvent.getIndustries()),
                                    child: TaskDialog(id: widget.id),
                                  );
                                },
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
                  BlocListener<PaymentBloc, PaymentState>(
                    listener: (context, state) => state.maybeMap(
                      success: (state) {
                        CustomNavigator.pop();
                        if (widget.isExpert!) {
                          BlocProvider.of<ProfileInfoBloc>(context).add(
                            ProfileInfoEvent.fetchProfileUserExpertRequested(
                              id: widget.id,
                            ),
                          );
                        } else {
                          BlocProvider.of<ProfileInfoBloc>(context).add(
                            ProfileInfoEvent.fetchProfileUserCustomerRequested(
                              id: widget.id,
                            ),
                          );
                        }
                      },
                      successSubscription: (state) {
                        CustomNavigator.pop();
                        BlocProvider.of<AuthBloc>(context).add(
                          const AuthEvent.authCheckRequested(),
                        );
                        if (widget.isExpert!) {
                          BlocProvider.of<ProfileInfoBloc>(context).add(
                            ProfileInfoEvent.fetchProfileUserExpertRequested(
                              id: widget.id,
                            ),
                          );
                        } else {
                          BlocProvider.of<ProfileInfoBloc>(context).add(
                            ProfileInfoEvent.fetchProfileUserCustomerRequested(
                              id: widget.id,
                            ),
                          );
                        }
                      },
                      orElse: () => {},
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Опыт', style: CwTextStyles.headerProfile),
                          const SizedBox(height: 12),
                          // Проверяем, есть ли премиум
                          if (widget.isPremium || state.expert.currentUserPaidForView!) ...[
                            ListView.builder(
                              itemCount: state.expert.experience.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => ExperienceWidget(
                                nameOrganization: state.expert.experience[index].organizationName,
                                startJob: state.expert.experience[index].dateStart,
                                endJob: state.expert.experience[index].dateEnd,
                                postName: state.expert.experience[index].position,
                                segments: state.expert.experience[index].segments,
                              ),
                            ),
                          ] else if (state.expert.experience.length == 1) ...[
                            _BlurredJobWidget(
                              experience: state.expert.experience[0],
                              id: widget.id,
                            )
                          ] else if (state.expert.experience.length > 1) ...[
                            ExperienceWidget(
                              nameOrganization: state.expert.experience[0].organizationName,
                              startJob: state.expert.experience[0].dateStart,
                              endJob: state.expert.experience[0].dateEnd,
                              postName: state.expert.experience[0].position,
                              segments: state.expert.experience[0].segments,
                            ),
                            const SizedBox(height: 8),
                            _BlurredJobWidget(
                              experience: state.expert.experience[0],
                              id: widget.id,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ReviewCustomerWidget(id: widget.id, isExpert: true),
            const SizedBox(height: 12),
          ],
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}

class _BlurredJobWidget extends StatelessWidget {
  final ExperienceModel experience;
  final int id;

  const _BlurredJobWidget({super.key, required this.experience, required this.id});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExperienceWidget(
          nameOrganization: experience.organizationName,
          startJob: experience.dateStart,
          endJob: experience.dateEnd,
          postName: experience.position,
          segments: experience.segments,
        ),
        Positioned.fill(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.white.withOpacity(0.1),
                child: Center(
                  child: CwElevatedButton(
                    heightStyle: CwButtonHeightEnum.standard,
                    leadingImage: Assets.imageEyeOn,
                    text: 'Посмотреть место работы',
                    onTap: () => {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (_) {
                          return BlocProvider<PaymentBloc>.value(
                            value: context.read<PaymentBloc>(),
                            child: PremiumDialog(idProfile: id),
                          );
                        },
                      ),
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
