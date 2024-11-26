import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReasonWidget extends StatelessWidget {
  String title;
  String description;
  String assetsName;

  ReasonWidget({
    super.key,
    required this.title,
    required this.description,
    required this.assetsName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            padding:
                const EdgeInsets.only(left: 32, right: 32, top: 48, bottom: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: CwColors.customWhite),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      CwTextStyles.headerWidget.merge(const TextStyle(fontSize: 20)),
                ),
                const SizedBox(height: 16),
                Text(
                  description,
                  style: CwTextStyles.headerSubText,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -28,
          left: 48,
          child: Container(
            width: 54,
            height: 54,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(72),
                color: CwColors.primary),
            child: SvgPicture.asset(
              assetsName,
              color: CwColors.customWhite,
            ),
          ),
        ),
      ],
    );
  }
}
