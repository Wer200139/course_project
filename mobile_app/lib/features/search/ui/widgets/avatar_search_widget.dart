import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class AvatarSearchWidget extends StatelessWidget {
  final String fullName;
  final String? image;
  final double? rating;
  final bool isPaidForView;

  const AvatarSearchWidget({
    super.key,
    required this.fullName,
    required this.isPaidForView,
    this.rating,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AvatarImage(
          pathImage: image,
          diameter: 50,
        ),
        const SizedBox(width: 24),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 170),
                    child: Text(
                      fullName,
                      style: CwTextStyles.nameText.merge(
                        const TextStyle(fontSize: 14),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (rating != null) ...[
                    SizedBox(width: 6),
                    StarsWidget(score: rating!),
                  ],
                ],
              ),
              if (!isPaidForView) ...[
                SizedBox(height: 4),
                Text(
                  'Оплачен просмотр мест работы',
                  style: CwTextStyles.headerSubText.withColor(CwColors.primary),
                ),
              ],
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }
}
