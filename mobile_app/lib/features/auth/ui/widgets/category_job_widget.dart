import 'package:clokwise/features/auth/ui/widgets/tags_widget.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryJobWidget extends StatelessWidget {
  final String title;
  final String assetName;
  final List<String> tags;

  const CategoryJobWidget({
    super.key,
    required this.title,
    required this.assetName,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: CwColors.customWhite,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 18, bottom: 24),
              child: Row(
                children: [
                  SvgPicture.asset(assetName, width: 28, height: 28),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      title,
                      style: CwTextStyles.headerWidget
                          .merge(const TextStyle(fontSize: 22)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, bottom: 14),
              child: TagsWidget(
                tags: tags,
              ),
            )
          ],
        ),
      ),
    );
  }
}
