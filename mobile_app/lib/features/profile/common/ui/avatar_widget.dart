import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String fullname;
  final String? image;
  final double? rating;
  final bool isPremium;
  final bool isUser;
  final bool isBlocked;

  const AvatarWidget({
    super.key,
    required this.fullname,
    required this.isBlocked,
    this.image,
    this.rating,
    this.isUser = false,
    this.isPremium = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AvatarImage(
          pathImage: image,
          diameter: 64,
          isBlocked: isBlocked,
        ),
        const SizedBox(width: 24),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 190,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        fullname,
                        style: isBlocked ? CwTextStyles.nameText.withColor(CwColors.subText) : CwTextStyles.nameText,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  StarsWidget(
                    score: rating ?? 0,
                    isBlocked: isBlocked,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (isBlocked) ...[
                Text(
                  isUser ? 'Пользователь заблокирован' : 'Ваш профиль заблокирован',
                  style: CwTextStyles.headerSubText,
                )
              ] else if (!isUser) ...[
                isPremium
                    ? Text(
                        'Clokwise-Premium',
                        style: CwTextStyles.headerSubText.withColor(CwColors.primary),
                      )
                    : const Text(
                        'Базовый профиль',
                        style: CwTextStyles.headerSubText,
                      )
              ]
            ],
          ),
        ),
      ],
    );
  }
}
