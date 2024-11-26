import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/ui/widgets/tags_widget.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/customer_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_page.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchRequestWidget extends StatelessWidget {
  final int chatId;
  final int searchRequestId;
  final String name;
  final String description;
  final String industry;
  final String? subindustry;
  final String? function;
  final String? subfunction;
  final bool isConfirmed;
  final bool isClosed;
  final bool isExpert;

  const SearchRequestWidget({
    super.key,
    required this.name,
    required this.description,
    required this.industry,
    required this.chatId,
    required this.searchRequestId,
    required this.isConfirmed,
    required this.isClosed,
    required this.isExpert,
    this.subindustry,
    this.function,
    this.subfunction,
  });

  List<String> _getTags({
    required String industry,
    String? subindustry,
    String? function,
    String? subfunction,
  }) {
    final tags = <String>[];
    if (industry.isNotEmpty) {
      tags.add(industry);
    }

    if (subindustry != null && subindustry.isNotEmpty) {
      tags.add(subindustry);
    }

    if (function != null && function.isNotEmpty) {
      tags.add(function);
    }

    if (subfunction != null && subfunction.isNotEmpty) {
      tags.add(subfunction);
    }

    return tags;
  }

  @override
  Widget build(BuildContext context) {
    final tags = _getTags(
      industry: industry,
      subindustry: subindustry,
      function: function,
      subfunction: subfunction,
    );

    return GestureDetector(
      onTap: () {
        if (industry.isNotEmpty) {
          CustomNavigator.showModal(
            context: context,
            child: isExpert
                ? ExpertTaskDetailsPage(
                    id: searchRequestId,
                  )
                : CustomerTaskDetailsPage(
                    id: searchRequestId,
                  ),
          );
        } else {
          return null;
        }
      },
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            width: double.infinity,
            clipBehavior: Clip.hardEdge,
            foregroundDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: CwColors.separatorGray),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: CwColors.separatorGray),
              color: CwColors.customWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(name, style: CwTextStyles.taskHeader),
                  ),
                  const SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      description,
                      style: CwTextStyles.taskText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TagsWidget(
                          tags: tags,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if (!isConfirmed && !isClosed && isExpert) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: CwElevatedButton(
                      text: 'Принять',
                      onTap: () => BlocProvider.of<ChatDetailsBloc>(context).add(
                        ChatDetailsEvent.acceptChattingRequested(chatId: chatId),
                      ),
                      block: true,
                    ),
                  ),
                  const SizedBox(width: 18),
                  Flexible(
                    child: CwElevatedButton(
                      text: 'Отклонить',
                      onTap: () => BlocProvider.of<ChatDetailsBloc>(context).add(
                        ChatDetailsEvent.declineRequested(chatId: chatId),
                      ),
                      block: true,
                      style: ElevatedButtonStyle.secondary,
                    ),
                  ),
                ],
              ),
            )
          ]
        ],
      ),
    );
  }
}
