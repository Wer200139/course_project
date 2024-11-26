import 'package:clokwise/features/auth/ui/widgets/tags_widget.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ExpertTaskItem extends StatelessWidget {
  final VoidCallback onTap;
  final String name;
  final String description;
  final String industry;
  final String? subindustry;
  final String? function;
  final String? subfunction;
  final DateTime dateTime;
  final bool isMatch;

  const ExpertTaskItem({
    required this.onTap,
    super.key,
    required this.name,
    required this.description,
    required this.industry,
    this.subindustry,
    this.function,
    this.subfunction,
    this.isMatch = false,
    required this.dateTime,
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
    final duration = DateTime.now().difference(dateTime);
    final hours = duration.inHours % 24;
    final tags = _getTags(
      industry: industry,
      subindustry: subindustry,
      function: function,
      subfunction: subfunction,
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      clipBehavior: Clip.hardEdge,
      foregroundDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: isMatch
            ? Border.all(
                color: CwColors.primary,
              )
            : null,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        border: isMatch
            ? Border.all(
                color: CwColors.primary,
              )
            : null,
        color: CwColors.customWhite,
      ),
      child: Material(
        color: CwColors.customWhite,
        child: InkWell(
          onTap: onTap,
          child: Ink(
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
                    const SizedBox(width: 12),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        duration.inDays > 0
                            ? '${duration.inDays} д'
                            : '$hours ч',
                        style: CwTextStyles.textWidget,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
