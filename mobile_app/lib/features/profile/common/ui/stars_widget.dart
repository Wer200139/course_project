import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StarsWidget extends StatelessWidget {
  final double score;
  final bool isBlocked;

  const StarsWidget({
    required this.score,
    this.isBlocked = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return score > 0
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: SvgPicture.asset(
                  width: 12,
                  height: 12,
                  Assets.imageStar,
                  color: isBlocked ? CwColors.subText : null,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                score.toStringAsFixed(1),
                style: CwTextStyles.nameText.merge(
                  TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: isBlocked ? CwColors.subText : null,
                  ),
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}
