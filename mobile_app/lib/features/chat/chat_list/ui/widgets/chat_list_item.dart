import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/ui/chat_details_page.dart';
import 'package:clokwise/features/chat/chat_list/bloc/chat_list_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatListItem extends StatelessWidget {
  final bool isChecked;
  final bool isOnline;
  final int id;
  final String name;
  final String? avatar;
  final String? companyName;
  final String? taskTitle;
  final String lastMessage;
  final int unreadMessages;
  final String lastTime;
  final String readTime;
  final bool isExpert;

  const ChatListItem({
    super.key,
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.unreadMessages,
    required this.lastTime,
    this.avatar,
    this.companyName,
    this.isChecked = true,
    this.isOnline = false,
    this.taskTitle,
    required this.readTime,
    required this.isExpert,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () => CustomNavigator.showModal(
          context: context,
          child: BlocProvider<ChatListBloc>.value(
            value: context.read<ChatListBloc>(),
            child: ChatDetailsPage(
              id: id,
            ),
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
              AvatarImage(
                diameter: 54,
                pathImage: avatar,
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
                              maxWidth: MediaQuery.of(context).size.width - 200,
                            ),
                            child: Row(
                              children: <Widget>[
                                if (companyName != null) ...[
                                  Text(
                                    companyName!,
                                    style: CwTextStyles.chatUserName,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ] else ...[
                                  Text(
                                    isExpert ? 'Эксперт $name' : name,
                                    style: CwTextStyles.chatUserName,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                                if (taskTitle != null) ...[
                                  const SizedBox(width: 8),
                                  Container(
                                    color: CwColors.separatorGray,
                                    child: const VerticalDivider(
                                      width: 1,
                                      indent: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Flexible(
                                    child: Text(
                                      taskTitle!,
                                      style: CwTextStyles.chatUserName,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ]
                              ],
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
                              maxWidth: MediaQuery.of(context).size.width - 190,
                            ),
                            child: Text(
                              lastMessage,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style: isChecked
                                  ? CwTextStyles.chatPreviewMessage
                                  : CwTextStyles.chatPreviewMessage.merge(
                                      const TextStyle(
                                          color: CwColors.primaryText)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (lastMessage.isNotEmpty) ...[
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 12),
                  child: Column(
                    children: [
                      if (unreadMessages > 0) ...[
                        Container(
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: CwColors.primary),
                          child: Center(
                            child: Text(
                              '$unreadMessages',
                              style: const TextStyle(
                                color: CwColors.customWhite,
                                height: 1,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Row(
                          children: [
                            Text(
                              lastTime,
                              style: CwTextStyles.timeWidget,
                            ),
                            if (readTime.isNotEmpty) ...[
                              SvgPicture.asset(
                                Assets.imageCheck,
                                width: 16,
                                height: 16,
                                color: CwColors.subText,
                              ),
                            ]
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
