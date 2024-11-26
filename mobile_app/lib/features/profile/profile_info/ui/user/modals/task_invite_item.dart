import 'package:clokwise/features/auth/ui/widgets/tags_widget.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskInviteItem extends StatefulWidget {
  final int id;
  final String title;
  final String description;
  final String industry;
  final String? subindustry;
  final String? function;
  final String? subfunction;
  final VoidCallback onTap;

  const TaskInviteItem({
    super.key,
    required this.id,
    required this.title,
    required this.description,
    required this.industry,
    required this.onTap,
    this.subindustry,
    this.function,
    this.subfunction,
  });

  @override
  State<TaskInviteItem> createState() => _TaskInviteItemState();
}

class _TaskInviteItemState extends State<TaskInviteItem> {
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

  bool isShowSegments = false;

  @override
  Widget build(BuildContext context) {
    final tags = _getTags(
      industry: widget.industry,
      subindustry: widget.subindustry,
      function: widget.function,
      subfunction: widget.subfunction,
    );

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: CwColors.separatorGray,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: widget.onTap,
        child: Ink(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text(
                  widget.title,
                  style: CwTextStyles.headerModal.merge(const TextStyle(fontSize: 18)),
                ),
                const SizedBox(height: 10),
                TagsWidget(
                  tags: tags,
                ),
                Center(
                  child: CwTextButton(
                    isSmall: true,
                    text: isShowSegments ? 'Свернуть' : 'Развернуть',
                    icon: isShowSegments ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
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
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                    child: Text(
                      widget.description,
                      style: CwTextStyles.taskText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
