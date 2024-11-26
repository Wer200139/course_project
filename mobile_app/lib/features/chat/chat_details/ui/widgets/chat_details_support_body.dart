import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/calendar_dialog.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/input_message_bar.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/message_item.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/avatar_image.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart' show DateFormat;

class ChatDetailsSupportBody extends StatefulWidget {
  final int chatId;

  const ChatDetailsSupportBody({
    super.key,
    required this.chatId,
  });

  @override
  State<ChatDetailsSupportBody> createState() => _ChatDetailsSupportBodyState();
}

class _ChatDetailsSupportBodyState extends State<ChatDetailsSupportBody> {
  final _controller = ScrollController();
  bool isHeaderVisible = true;

  void _scrollListener() {
    if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
      if (isHeaderVisible) {
        setState(() {
          isHeaderVisible = false;
        });
      }
    } else if (_controller.position.userScrollDirection == ScrollDirection.forward) {
      if (!isHeaderVisible) {
        setState(() {
          isHeaderVisible = true;
        });
      }
    }
  }

  @override
  void initState() {
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_scrollListener);
    _controller.dispose();
    super.dispose();
  }

  bool _getIsPremium(BuildContext context) {
    return BlocProvider.of<AuthBloc>(context).state.maybeMap(
          success: (state) {
            if (state.user.hasSubscription != null) {
              return state.user.hasSubscription!;
            } else {
              return false;
            }
          },
          orElse: () => false,
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatDetailsBloc, ChatDetailsState>(
      listenWhen: (prev, cur) =>
          cur.maybeMap(sendReview: (_) => true, successFinish: (_) => true, success: (_) => true, orElse: () => false),
      listener: (context, state) => state.maybeMap(
        success: (state) {
          return ChatDetailsEvent.markMessageAsReadRequested(chatId: widget.chatId, previousChat: state.chat);
        },
        orElse: () => {},
      ),
      builder: (contextBuild, state) => state.maybeMap(
        loading: (state) => const PageLoadingIndicator(),
        success: (state) => NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, inScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              leadingWidth: 0,
              pinned: true,
              actions: [
                PopupMenuButton(
                  padding: const EdgeInsets.only(right: 24, top: 10),
                  surfaceTintColor: CwColors.subButton,
                  color: CwColors.subButton,
                  iconColor: CwColors.subButton,
                  icon: Container(
                    width: 36,
                    height: 42,
                    decoration: BoxDecoration(
                      color: CwColors.subButton,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(Assets.imageMore),
                  ),
                  itemBuilder: (context) => <PopupMenuEntry<String>>[
                    if (state.chat.isConfirmed && state.chat.isConfirmedByRecipient) ...[
                      PopupMenuItem<String>(
                        value: 'addToCalendar',
                        child: const Text(
                          'Добавить в календарь',
                          style: CwTextStyles.textButton,
                        ),
                        onTap: () => showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return BlocProvider(
                              create: (context) => ChatDetailsBloc(
                                snackBarRepository: CustomInjector.find<SnackBarRepository>(),
                                chatsRepository: ChatRepository(
                                  mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                ),
                                chatId: widget.chatId,
                              ),
                              child: const CalendarDialog(),
                            );
                          },
                        ),
                      ),
                    ],
                  ],
                ),
              ],
              surfaceTintColor: CwColors.customWhite,
              backgroundColor: CwColors.customWhite,
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(18),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Divider(
                    color: CwColors.bgGray,
                  ),
                ),
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const AvatarImage(
                      diameter: 42,
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
                                  'Тех. специалист',
                                  style: CwTextStyles.chatUserName,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    controller: _controller,
                    itemCount: state.messages.length,
                    itemBuilder: (context, index) {
                      if (index < state.messages.length - 1 &&
                          state.messages[index].datetimeCreated.day != state.messages[index + 1].datetimeCreated.day) {
                        return Column(
                          children: [
                            Center(
                              child: Text(
                                DateFormat('EEEE, d MMMM').format(state.messages[index].datetimeCreated),
                                style: CwTextStyles.chatDateMsg,
                              ),
                            ),
                            MessageItem(
                              currentUserId: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                                    success: (state) => state.user.id,
                                    orElse: () => 0,
                                  ),
                              message: state.messages[index],
                              availableUntil: state.messages[index].availableUntil,
                              isAcceptedInfo: false,
                              isClosedInfo: false,
                            ),
                          ],
                        );
                      }

                      if (!state.messages[index].markedAsDeleted) {
                        return MessageItem(
                          currentUserId: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                                success: (state) => state.user.id,
                                orElse: () => 0,
                              ),
                          message: state.messages[index],
                          isAcceptedInfo: false,
                          isClosedInfo: false,
                          availableUntil: state.messages[index].availableUntil,
                        );
                      }
                    },
                  ),
                ),
                InputMessageBar(
                  chatId: widget.chatId,
                  isPremium: _getIsPremium(context),
                  currentSize: 0,
                ),
              ],
            ),
          ),
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
