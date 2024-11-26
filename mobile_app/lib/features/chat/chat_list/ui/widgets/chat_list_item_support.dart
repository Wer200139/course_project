import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';

class ChatListItemSupport extends StatelessWidget {
  final int id;
  final String lastMessage;
  final int unreadMessages;
  final String lastTime;

  const ChatListItemSupport({
    super.key,
    required this.id,
    required this.lastMessage,
    required this.unreadMessages,
    required this.lastTime,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () => CustomNavigator.showModal(
          context: context,
          child: const ChatDetailsPage(
            id: 0
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: CwColors.menuButtonHover,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            children: [
              const AvatarImage(
                diameter: 54,
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
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
                            child: const FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                'Тех.специалист',
                                style: CwTextStyles.chatUserName,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width - 180,
                            ),
                            child: Text(
                              lastMessage,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style: CwTextStyles.chatPreviewMessage,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  children: [
                    Text(
                      lastTime,
                      style: CwTextStyles.timeWidget,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
