import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ActivityInfoWidget extends StatelessWidget {
  final String webSite;
  final String description;

  const ActivityInfoWidget({
    super.key,
    required this.webSite,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Деятельность', style: CwTextStyles.headerProfile),
        const SizedBox(height: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Сайт',
              style: CwTextStyles.headerSubText,
            ),
            const SizedBox(height: 12),
            Text(
              webSite,
              style: CwTextStyles.profileInfo,
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Text(
          'Описание компании',
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