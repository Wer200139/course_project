import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/chat/chat_list/bloc/chat_list_bloc.dart';
import 'package:clokwise/features/chat/chat_list/ui/widgets/chat_list_item.dart';
import 'package:clokwise/features/chat/chat_list/ui/widgets/chat_list_item_support.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListBody extends StatefulWidget {
  final bool isExpert;

  const ChatListBody({super.key, required this.isExpert});

  @override
  State<ChatListBody> createState() => _ChatListBodyState();
}

class _ChatListBodyState extends State<ChatListBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatListBloc, ChatListState>(
      builder: (context, state) {
        return state.maybeMap(
          loading: (state) => const PageLoadingIndicator(),
          success: (state) {
            return CWRefreshIndicator(
              onRefresh: () {
                BlocProvider.of<ChatListBloc>(context).add(const ChatListEvent.fetchChatListRequested());
              },
              child: CustomScrollView(
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    sliver: SliverMainAxisGroup(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                                child: Text(
                                  'Поддержка',
                                  style: CwTextStyles.nameText,
                                ),
                              ),
                              ChatListItemSupport(
                                id: state.supportChat.id,
                                lastMessage: state.supportChat.lastMessages.firstOrNull?.text ??
                                    (state.supportChat.lastMessages.firstOrNull?.attachments.isNotEmpty == true
                                        ? state.supportChat.lastMessages.firstOrNull?.attachments.first.filename ?? ''
                                        : ''),
                                lastTime: state.supportChat.lastMessages.firstOrNull?.datetimeCreated != null
                                    ? DateFormat('HH:MM').format(state.supportChat.lastMessages.first.datetimeCreated.toLocal())
                                    : '',
                                unreadMessages: state.supportChat.unreadMessagesCount, // Adjust as needed
                              ),
                              const SizedBox(height: 10),
                              const Divider(color: CwColors.bgGray),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                                child: Text(
                                  'Чаты',
                                  style: CwTextStyles.nameText,
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.chats.length,
                                itemBuilder: (context, index) {
                                  final chat = state.chats[index];

                                  if (state.chats[index].user == null) {
                                    return const SizedBox();
                                  }

                                  if (widget.isExpert != state.chats[index].recipientIsExpert) {
                                    return ChatListItem(
                                      key: UniqueKey(),
                                      isExpert: chat.recipientIsExpert!,
                                      id: chat.id,
                                      avatar: chat.user!.avatar?.image,
                                      name:
                                          chat.recipientIsExpert! ? chat.user!.firstName : '${chat.user!.firstName} ${chat.user!.lastName}',
                                      companyName: chat.user!.companyName,
                                      taskTitle: chat.searchRequest?.name,
                                      lastMessage: chat.isClosed!
                                          ? 'Чат закрыт'
                                          : chat.lastMessages.isEmpty && chat.isConfirmed && chat.isConfirmedByRecipient
                                              ? 'Пользователь подтвердил общение'
                                              : chat.lastMessages.firstOrNull?.text ??
                                                  (chat.lastMessages.firstOrNull?.attachments.isNotEmpty == true
                                                      ? chat.lastMessages.firstOrNull?.attachments.first.filename ?? ''
                                                      : ''),
                                      lastTime: chat.lastMessages.firstOrNull?.datetimeCreated != null
                                          ? DateFormat('HH:MM').format(chat.lastMessages.first.datetimeCreated.toLocal())
                                          : '',
                                      readTime: chat.lastMessages.firstOrNull?.datetimeRead != null
                                          ? DateFormat.jm().format(chat.lastMessages.first.datetimeCreated.toLocal())
                                          : '',
                                      unreadMessages: state.chats[index].unreadMessagesCount, // Adjust as needed
                                    );
                                  }

                                  return const SizedBox();
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
