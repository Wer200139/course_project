import 'package:clokwise/features/profile/profile_info/ui/expert/segment_experience_widget.dart';
import 'package:clokwise/features/repositories/profile/models/segment_experience_model.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ExperienceWidget extends StatefulWidget {
  final String nameOrganization;
  final String startJob;
  final String endJob;
  final String postName;
  final List<SegmentExperienceModel> segments;

  const ExperienceWidget({
    super.key,
    required this.nameOrganization,
    required this.startJob,
    required this.endJob,
    required this.postName,
    required this.segments,
  });

  @override
  State<ExperienceWidget> createState() => _ExperienceWidgetState();
}

class _ExperienceWidgetState extends State<ExperienceWidget> {
  bool isShowSegments = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12),
                const Text(
                  'Название организии или её описание',
                  style: CwTextStyles.headerSubText,
                ),
                const SizedBox(height: 12),
                Text(
                  widget.nameOrganization,
                  style: CwTextStyles.profileInfo,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Начало работы',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.startJob,
                    style: CwTextStyles.profileInfo,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 58),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Завершение',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    widget.endJob,
                    style: CwTextStyles.profileInfo,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Должность',
          style: CwTextStyles.headerSubText,
        ),
        const SizedBox(height: 12),
        Text(
          widget.postName,
          style: CwTextStyles.profileInfo,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 12),
        CwTextButton(
          text: isShowSegments
              ? 'Скрыть сегменты опыта'
              : 'Посмотреть сегменты опыта',
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
        if (isShowSegments) ...[
          const SizedBox(height: 12),
          Text(
            'Сегменты опыта',
            style: CwTextStyles.headerProfile.merge(
              const TextStyle(
                color: CwColors.primaryText,
              ),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.segments.length,
            itemBuilder: (context, index) => Column(
              children: [
                SegmentExperienceWidget(
                  industry: widget.segments[index].industry.name,
                  subindustry: widget.segments[index].subindustry.name,
                  function: widget.segments[index].function.name,
                  subfunction: widget.segments[index].subfunction.name,
                  dateStart: widget.segments[index].dateStart,
                  dateEnd: widget.segments[index].dateEnd,
                  description: widget.segments[index].description,
                ),
                if (index < widget.segments.length - 1) ...[
                  const SizedBox(height: 12),
                  const Divider(color: CwColors.bgGray),
                  const SizedBox(height: 4),
                ],
              ],
            ),
          )
        ],
      ],
    );
  }
}
