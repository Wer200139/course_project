import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:clokwise/features/profile/profile_info/ui/profile_page.dart';
import 'package:clokwise/features/search/ui/widgets/avatar_search_widget.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpertItem extends StatelessWidget {
  final int userId;
  final int applicationId;
  final String name;
  final String? avatar;
  final double relevantExperience;
  final double totalExperience;
  final int? chatId;

  const ExpertItem({
    super.key,
    required this.userId,
    required this.applicationId,
    required this.name,
    required this.relevantExperience,
    required this.totalExperience,
    this.avatar,
    this.chatId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CustomNavigator.showModal(
        context: context,
        child: ProfilePage(
          userId: userId,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        decoration: BoxDecoration(
          color: CwColors.menuButtonHover,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AvatarSearchWidget(
              image: avatar,
              fullName: 'Эксперт $name',
              isPaidForView: false,
            ),
            const SizedBox(height: 12),
            RichText(
              text: TextSpan(
                text: 'Релевантный опыт: ',
                style: CwTextStyles.headerSubText,
                children: [
                  TextSpan(
                    text: relevantExperience % 1 == 0
                        ? '${relevantExperience.toInt()} года'
                        : '${relevantExperience.toStringAsFixed(1)} года',
                    //,
                    style: CwTextStyles.textButton.merge(
                      const TextStyle(
                        color: CwColors.primary,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Общий опыт работы: ',
                style: CwTextStyles.headerSubText,
                children: [
                  TextSpan(
                    text: totalExperience % 1 == 0 ? '${totalExperience.toInt()} года' : '${totalExperience.toStringAsFixed(1)} года',
                    style: CwTextStyles.textButton.merge(
                      const TextStyle(
                        color: CwColors.primary,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            chatId != null
                ? CwElevatedButton(
                    heightStyle: CwButtonHeightEnum.standard,
                    style: ElevatedButtonStyle.reversal,
                    text: 'Общение уже начато',
                    block: true,
                    onTap: () {
                      CustomNavigator.showModal(
                        context: context,
                        child: ChatDetailsPage(
                          id: chatId!,
                        ),
                      );
                    },
                  )
                : CwElevatedButton(
                    heightStyle: CwButtonHeightEnum.standard,
                    text: 'Начать общение',
                    block: true,
                    onTap: () => BlocProvider.of<TaskBloc>(context).add(
                      TaskEvent.startChatTask(userId: userId, applicationId: applicationId),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
