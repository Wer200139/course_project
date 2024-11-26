import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/common/utils/vars.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/profile_page.dart';
import 'package:clokwise/features/repositories/task/models/creator_model.dart';
import 'package:clokwise/features/repositories/task/request/task_application_request.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/detail_task_item.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpertTaskDetailsBody extends StatefulWidget {
  const ExpertTaskDetailsBody({super.key});

  @override
  State<ExpertTaskDetailsBody> createState() => _ExpertTaskDetailsBodyState();
}

class _ExpertTaskDetailsBodyState extends State<ExpertTaskDetailsBody> {
  late final currentUserId;
  bool isAnswered = false;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    currentUserId = GlobalVars.currentUserId;
  }

  @override
  Widget build(BuildContext context) {
    return CWScaffold(
      appBar: CwAppBar(
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
      ),
      body: BlocConsumer<TaskBloc, TaskState>(
        listenWhen: (context, state) =>
            state.maybeMap(successSingleRequest: (_) => true, successSendApplication: (_) => true, orElse: () => false),
        listener: (context, state) => state.maybeMap(
          loading: (_) => setState(() {
            isLoading = true;
          }),
          successSendApplication: (_) => setState(() {
            isLoading = false;
            isAnswered = true;
          }),
          successSingleRequest: (state) {
            isAnswered = state.task.applicants.any((e) => e.id == currentUserId);
            return null;
          },
          orElse: () => {},
        ),
        buildWhen: (context, state) => state.maybeMap(
          loadingPage: (_) => true,
          successSingleRequest: (_) => true,
          orElse: () => false,
        ),
        builder: (context, state) => state.maybeMap(
          loadingPage: (_) => const PageLoadingIndicator(),
          successSingleRequest: (state) => CWRefreshIndicator(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  width: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: CwColors.customWhite,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      _AvatarWidget(
                        fullname: state.task.creator.type == TypeAccount.COMPANY
                            ? state.task.creator.companyName!
                            : '${state.task.creator.firstName}  ${state.task.creator.lastName}',
                        image: state.task.creator.avatar?.image,
                        rating: state.task.creatorRating,
                        onTap: () => CustomNavigator.showModal(
                          context: context,
                          child: ProfilePage(userId: state.task.creator.id),
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (currentUserId != state.task.creator.id && state.task.isActive) ...[
                        isAnswered
                            ? CwElevatedButton(
                                text: 'Вы уже откликнулись на задачу',
                                style: ElevatedButtonStyle.reversal,
                                heightStyle: CwButtonHeightEnum.standard,
                                block: true,
                                onTap: () => {},
                              )
                            : CwElevatedButton(
                                text: 'Откликнуться на задачу',
                                heightStyle: CwButtonHeightEnum.standard,
                                isLoading: isLoading,
                                block: true,
                                onTap: () => BlocProvider.of<TaskBloc>(context).add(
                                  TaskEvent.sendApplcationRequested(
                                    request: TaskApplicationRequest(request: state.task.id),
                                  ),
                                ),
                              ),
                      ],
                      if (!state.task.isActive) ...[
                        CwElevatedButton(
                          text: 'Время запроса истекло',
                          style: ElevatedButtonStyle.reversal,
                          heightStyle: CwButtonHeightEnum.standard,
                          block: true,
                          onTap: null,
                        )
                      ],
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                DetailTaskItem(
                  name: state.task.name,
                  description: state.task.description ?? '',
                  industry: state.task.industry!.name,
                  subindustry: state.task.subindustry?.name,
                  function: state.task.function?.name,
                  subfunction: state.task.subfunction?.name,
                  dateTimeCreated: state.task.datetimeCreated,
                  dateTimeExpire: state.task.datetimeExpire ?? DateTime.now(),
                  isPrecise: true,
                ),
              ],
            ),
          ),
          orElse: () => const SizedBox(),
        ),
      ),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  final String fullname;
  final String? image;
  final double? rating;
  final VoidCallback onTap;

  const _AvatarWidget({
    required this.fullname,
    required this.onTap,
    this.image,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Row(
        children: [
          AvatarImage(
            pathImage: image,
            diameter: 64,
          ),
          const SizedBox(width: 24),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width - 190,
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          fullname,
                          style: CwTextStyles.nameText,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    StarsWidget(score: rating ?? 0),
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Был в сети 13 часов назад',
                  style: CwTextStyles.headerSubText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
