import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class TaskAvatarWidget extends StatelessWidget {
  final String fullname;
  final String? image;
  final double? rating;

  const TaskAvatarWidget({super.key, required this.fullname, this.image, this.rating});

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
                        style: CwTextStyles.nameText,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  StarsWidget(score: rating ?? 0),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}
