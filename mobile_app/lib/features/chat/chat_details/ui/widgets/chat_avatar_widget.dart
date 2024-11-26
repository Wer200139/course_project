import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/profile/common/ui/stars_widget.dart';
import 'package:clokwise/features/profile/profile_info/ui/profile_page.dart';
import 'package:clokwise/features/profile/profile_info/ui/user/profile_user_body.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ChatAvatarWidget extends StatelessWidget {
  final int id;
  final bool isExpert;
  final String name;
  final double rating;
  final String status;
  final String? image;

  const ChatAvatarWidget({
    super.key,
    required this.id,
    required this.isExpert,
    required this.name,
    required this.rating,
    required this.status,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => CustomNavigator.showModal(
        context: context,
        child: ProfilePage(
          userId: id,
          isExpert: isExpert,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AvatarImage(
            diameter: 42,
            pathImage: image,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 220),
                      child: Text(
                        name,
                        style: CwTextStyles.chatUserName,
                      ),
                    ),
                    const SizedBox(width: 10),
                    StarsWidget(score: rating),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  status,
                  style: CwTextStyles.chatUserStatus,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
