import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/modals/task_invite_item.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseSearchTaskDialog extends StatefulWidget {
  final VoidCallback onTap;
  final List<int> userIds;

  const ChooseSearchTaskDialog({
    super.key,
    required this.onTap,
    required this.userIds,
  });

  @override
  State<ChooseSearchTaskDialog> createState() => _ChooseSearchTaskDialogState();
}

class _ChooseSearchTaskDialogState extends State<ChooseSearchTaskDialog> {
  bool isClosed = false;
  bool isCommon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              if (isClosed || isCommon) ...[
                _ListTasks(
                  onTap: widget.onTap,
                  userIds: widget.userIds,
                  isClosed: isClosed,
                ),
              ],
              if (!isClosed && !isCommon) ...[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      'Выберите задачу',
                      style: CwTextStyles.headerModal,
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 16),
                        CwElevatedButton(
                          block: true,
                          text: 'Общие запросы',
                          onTap: () => setState(() {
                            isCommon = true;
                            isClosed = false;
                          }),
                        ),
                        const SizedBox(height: 8),
                        CwElevatedButton(
                          block: true,
                          text: 'Закрытые запросы',
                          onTap: () => setState(() {
                            isCommon = false;
                            isClosed = true;
                          }),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              ],
              Positioned(
                right: 0,
                top: 12,
                child: CwIconButton(
                    width: 18,
                    height: 18,
                    icon: SvgPicture.asset(Assets.imageCrossClose),
                    onTap: () => {
                          CustomNavigator.maybePop(context: context),
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListTasks extends StatelessWidget {
  final VoidCallback onTap;
  final List<int> userIds;
  final bool isClosed;

  const _ListTasks({
    super.key,
    required this.onTap,
    required this.userIds,
    required this.isClosed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const Text(
          'Выберите задачу',
          style: CwTextStyles.headerModal,
        ),
        const SizedBox(height: 32),
        CwTextButton(
          text: 'Создать новую задачу',
          backgroundColor: CwColors.subButton,
          block: true,
          icon: Icons.add,
          iconSize: 18,
          onTap: onTap,
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [CwColors.bgGray, CwColors.bgGray, CwColors.bgGray, Colors.transparent],
                stops: [
                  0.0,
                  0.0,
                  0.9,
                  1.0,
                ],
              ).createShader(rect);
            },
            child: SingleChildScrollView(
              child: Column(
                children: [
                  BlocBuilder<TaskBloc, TaskState>(
                    buildWhen: (context, state) => state.maybeMap(successCustomerSearch: (state) => true, orElse: () => false),
                    builder: (context, state) => state.maybeMap(
                      successCustomerSearch: (state) {
                        // Определяем, какие результаты использовать в зависимости от isClosed
                        final results = isClosed ? state.closedResult : state.publicResult;

                        // Проверяем, есть ли отфильтрованные результаты
                        return ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(height: 8),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: results.isNotEmpty ? results.length : 1,
                          itemBuilder: (context, index) {
                            if (results.isNotEmpty) {
                              final task = results[index];
                              return TaskInviteItem(
                                id: task.id,
                                title: task.name,
                                description: task.description ?? '',
                                industry: task.industry?.name ?? '',
                                subindustry: task.subindustry?.name ?? '',
                                function: task.function?.name ?? '',
                                subfunction: task.subfunction?.name ?? '',
                                onTap: () => BlocProvider.of<TaskBloc>(context).add(
                                  TaskEvent.inviteExpertsRequested(
                                    userIds: userIds,
                                    request: state.result[index],
                                  ),
                                ),
                              );
                            } else {
                              return const SizedBox();
                            }
                          },
                        );
                      },
                      orElse: () => const SizedBox(),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
