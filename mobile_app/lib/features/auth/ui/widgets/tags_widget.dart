import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';

class TagsWidget extends StatelessWidget {
  final List<String> tags;

  const TagsWidget({this.tags = const [], super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: tags.map((text) {
          return Row(
            children: [
              _Tag(text: text),
              const SizedBox(width: 6), // add 8px space between tags
            ],
          );
        }).toList(),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;

  const _Tag({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: CwColors.tag,
        ),
      ),
      child: Text(
        text,
        style: CwTextStyles.tag,
      ),
    );
  }
}
