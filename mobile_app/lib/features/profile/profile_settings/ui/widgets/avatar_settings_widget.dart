import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/avatar/ui/avatar_page.dart';
import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/my_flutter_app_icons.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class AvatarSettingsWidget extends StatelessWidget {
  final String fullName;
  final String? image;
  final double? rating;

  const AvatarSettingsWidget({
    super.key,
    required this.fullName,
    this.image,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AvatarImage(
          pathImage: image,
          diameter: 64,
        ),
        const SizedBox(width: 24),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width - 190,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        fullName,
                        style: CwTextStyles.nameText,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  StarsWidget(score: rating ?? 0),
                ],
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: CwTextButton(
                  text: 'Заменить аватар',
                  backgroundColor: CwColors.subButton,
                  icon: MyFlutterApp.refresh,
                  iconSize: 18,
                  onTap: () => {
                    CustomNavigator.showModal(
                        context: context, child: const AvatarPage())
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
