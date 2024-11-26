import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/ui/widgets/tags_widget.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/customer_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_page.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ChatTaskWidget extends StatefulWidget {
  final int taskId;
  final String title;
  final String description;
  final String industry;
  final bool isClosed;
  final bool isExpert;
  final String? subindustry;
  final String? function;
  final String? subfunction;

  const ChatTaskWidget({
    super.key,
    required this.taskId,
    required this.title,
    required this.description,
    required this.industry,
    required this.isClosed,
    required this.isExpert,
    this.subindustry,
    this.function,
    this.subfunction,
  });

  @override
  State<ChatTaskWidget> createState() => _ChatTaskWidgetState();
}

class _ChatTaskWidgetState extends State<ChatTaskWidget> {
  bool isShowSegments = false;

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
      industry: widget.industry,
      subindustry: widget.subindustry,
      function: widget.function,
      subfunction: widget.subfunction,
    );

    return GestureDetector(
      onTap: () {
        if (widget.industry.isNotEmpty) {
          CustomNavigator.showModal(
            context: context,
            child: widget.isExpert
                ? ExpertTaskDetailsPage(
              id: widget.taskId,
            )
                : CustomerTaskDetailsPage(
              id: widget.taskId,
            ),
          );
        } else {
          return null;
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        width: double.infinity,
        decoration: BoxDecoration(
          color: CwColors.customWhite,
          border: Border.all(
            color: CwColors.separatorGray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Text(
                widget.title,
                style: CwTextStyles.headerModal
                    .merge(const TextStyle(fontSize: 18)),
              ),
              const SizedBox(height: 10),
              TagsWidget(
                tags: tags,
              ),
              Center(
                child: CwTextButton(
                  isSmall: true,
                  text: isShowSegments ? 'Свернуть' : 'Развернуть',
                  icon: isShowSegments
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  padding: const EdgeInsets.only(left: 0, right: 2),
                  onTap: () => setState(() {
                    isShowSegments = !isShowSegments;
                  }),
                  textStyle: CwTextStyles.activatedButton.merge(
                    const TextStyle(fontSize: 14, color: CwColors.primary),
                  ),
                ),
              ),
              const SizedBox(height: 6),
              if (isShowSegments) ...[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Text(
                    widget.description,
                    style: CwTextStyles.taskText,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
