import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:clokwise/features/search/bloc/search_bloc.dart';
import 'package:clokwise/features/search/ui/search_page.dart';
import 'package:clokwise/features/search/ui/widgets/search_body.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/detail_task_item.dart';
import 'package:clokwise/features/task/ui/widgets/expert_item.dart';
import 'package:clokwise/features/task/ui/widgets/task_avatar_widget.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonTaskDetailsBody extends StatefulWidget {
  const CommonTaskDetailsBody({super.key});

  @override
  State<CommonTaskDetailsBody> createState() => _CommonTaskDetailsBodyState();
}

class _CommonTaskDetailsBodyState extends State<CommonTaskDetailsBody> {
  @override
  Widget build(BuildContext widgetContext) {
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
        listenWhen: (prev, cur) => cur.maybeMap(
          successStartChat: (_) => true,
          orElse: () => false,
        ),
        listener: (context, state) => state.maybeMap(
          successStartChat: (state) => CustomNavigator.showModal(
            context: context,
            child: ChatDetailsPage(
              id: state.chatId,
            ),
          ),
          orElse: () => {},
        ),
        buildWhen: (context, state) => state.maybeMap(loading: (_) => true, successSingleRequest: (_) => true, orElse: () => false),
        builder: (context, state) => state.maybeMap(
          successSingleRequest: (state) => CWRefreshIndicator(
            child: SingleChildScrollView(
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
                        TaskAvatarWidget(
                          fullname: state.task.creator.companyName ?? '${state.task.creator.firstName} ${state.task.creator.lastName} ',
                          image: state.task.creator.avatar?.image,

                        ),
                        const SizedBox(height: 12),
                        CwElevatedButton(
                          text: 'Найти эксперта для запроса',
                          heightStyle: CwButtonHeightEnum.standard,
                          block: true,
                          onTap: () {
                            CustomNavigator.popUntil(
                              context: context,
                              predicate: ModalRoute.withName(RouteInfo.chat.name),
                            );
                            if (formKeyScreen.currentState != null) {
                              BlocProvider.of<SearchBloc>(formKeyScreen.currentState!.context).add(const SearchEvent.resetSearch());
                            }
                            CustomNavigator.goNamed(
                              RouteInfo.home.name,
                              params: RouteInfo.home.getParams(
                                extraParams: {
                                  'index': '2',
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  DetailTaskItem(
                    name: state.task.name,
                    description: state.task.description ?? '',
                    dateTimeCreated: state.task.datetimeCreated,
                    dateTimeExpire: state.task.datetimeExpire ?? DateTime.now(),
                    industry: state.task.industry!.name,
                    subindustry: state.task.subindustry?.name,
                    function: state.task.function?.name,
                    subfunction: state.task.subfunction?.name,
                    isPrecise: true,
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: CwColors.customWhite,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text('Откликнувшиеся эксперты (${state.task.applicants.length})', style: CwTextStyles.taskHeader),
                        ),
                        const SizedBox(height: 2),
                        ListView.builder(
                          itemCount: state.task.applicants.length,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => ExpertItem(
                            userId: state.task.applicants[index].id,
                            applicationId: state.task.applicants[index].applicationId!,
                            avatar: state.task.applicants[index].avatar?.image,
                            name: state.task.applicants[index].firstName ?? '',
                            relevantExperience: state.task.applicants[index].relevantExperience ?? 0,
                            totalExperience: state.task.applicants[index].totalExperience ?? 0,
                            chatId: state.task.applicants[index].chatId,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          orElse: () => const SizedBox(),
        ),
      ),
    );
  }
}
