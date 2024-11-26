import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class SegmentExperienceWidget extends StatelessWidget {
  final String industry;
  final String subindustry;
  final String function;
  final String subfunction;
  final String dateStart;
  final String dateEnd;
  final String description;

  const SegmentExperienceWidget({
    super.key,
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.dateStart,
    required this.dateEnd,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Отрасль',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    industry,
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
                    'Подотрасль',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    subindustry,
                    style: CwTextStyles.profileInfo,
                  ),
                ],
              ),
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
                    'Функция',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    function,
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
                    'Подфункции',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    subfunction,
                    style: CwTextStyles.profileInfo,
                  ),
                ],
              ),
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
                    'Начало',
                    style: CwTextStyles.headerSubText,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    dateStart,
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
                    dateEnd,
                    style: CwTextStyles.profileInfo,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Подробнее об опыте',
          style: CwTextStyles.headerSubText,
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: CwTextStyles.profileInfo,
        ),
      ],
    );
  }
}
