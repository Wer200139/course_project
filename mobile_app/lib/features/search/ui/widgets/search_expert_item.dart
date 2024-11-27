import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:clokwise/features/search/bloc/search_bloc.dart';
import 'package:clokwise/features/search/ui/widgets/avatar_search_widget.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchExpertItem extends StatelessWidget {
  final int userId;
  final int? chatId;
  final bool isChosen;
  final String name;
  final String? avatar;
  final double? rating;
  final String relevantExperience;
  final String totalExperience;
  final bool isPaidForView;
  final VoidCallback onTap;

  const SearchExpertItem({
    required this.userId,
    required this.chatId,
    required this.name,
    required this.relevantExperience,
    required this.totalExperience,
    required this.isChosen,
    required this.onTap,
    required this.avatar,
    required this.rating,
    required this.isPaidForView,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Ink(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                border: isChosen ? Border.all(color: CwColors.blueButton) : null,
                color: CwColors.menuButtonHover,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarSearchWidget(
                    image: avatar,
                    fullName: 'Эксперт $name',
                    rating: rating,
                    isPaidForView: isPaidForView,
                  ),
                  const SizedBox(height: 12),
                  RichText(
                    text: TextSpan(
                      text: 'Релевантный опыт: ',
                      style: CwTextStyles.headerSubText,
                      children: [
                        TextSpan(
                          text: relevantExperience,
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
                          text: totalExperience,
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
                  chatId == null
                      ? CwElevatedButton(
                          heightStyle: CwButtonHeightEnum.standard,
                          text: 'Начать общение',
                          block: true,
                          onTap: () {
                            BlocProvider.of<SearchBloc>(context).add(
                              SearchEvent.startChat(userId: userId),
                            );
                          },
                        )
                      : CwElevatedButton(
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
                        ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
