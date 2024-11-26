import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/features/chat/chat_details/ui/modals/boost_response_dialog.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/calendar_dialog.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/chat_avatar_widget.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/chat_task_widget.dart';
import 'package:clokwise/features/chat/chat_details/ui/modals/feedback_dialog.dart';
import 'package:clokwise/features/chat/chat_details/ui/modals/finish_chat_dialog.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/input_message_bar.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/message_item.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/search_request_widget.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart' show DateFormat;

class ChatDetailsBody extends StatefulWidget {
  final int chatId;

  const ChatDetailsBody({
    super.key,
    required this.chatId,
  });

  @override
  State<ChatDetailsBody> createState() => _ChatDetailsBodyState();
}

class _ChatDetailsBodyState extends State<ChatDetailsBody> {
  final _controller = ScrollController();
  bool isHeaderVisible = true;

  void _scrollListener() {
    if (_controller.position.userScrollDirection == ScrollDirection.forward) {
      if (isHeaderVisible) {
        setState(() {
          isHeaderVisible = false;
        });
      }
    } else if (_controller.position.userScrollDirection == ScrollDirection.reverse) {
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

  String _getUserStatus(DateTime? lastSeen) {
    if (lastSeen == null) {
      return 'Оффлайн';
    }

    final fiveMinutesAgo = DateTime.now().subtract(const Duration(minutes: 5));

    return lastSeen.isAfter(fiveMinutesAgo) ? 'Онлайн' : 'Оффлайн';
  }

  bool getStateInput(bool isConfirmed, isConfirmedByRecipient, bool hasTask, bool isClosed) {
    if (isClosed) {
      return false;
    }
    if (!isConfirmed && !hasTask) {
      return true;
    }

    return isConfirmed && isConfirmedByRecipient;
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

  bool _isDialogOpen = false;
  bool isEnabledInput = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatDetailsBloc, ChatDetailsState>(
      listenWhen: (prev, cur) => cur.maybeMap(
        sendReview: (_) => true,
        successFinish: (_) => true,
        successAccept: (_) => true,
        successDecline: (_) => true,
        success: (_) => true,
        orElse: () => false,
      ),
      listener: (context, state) => state.maybeMap(
        sendReview: (state) => CustomNavigator.popUntil(
          context: context,
          predicate: ModalRoute.withName(RouteInfo.main.name),
        ),
        success: (state) {
          setState(() {
            isEnabledInput = getStateInput(
              state.chat.isConfirmed,
              state.chat.isConfirmedByRecipient,
              state.chat.searchRequest != null,
              state.chat.isClosed!,
            );
          });
          if (state.messages.length == 1 && !state.chat.isConfirmed) {
            setState(() {
              isEnabledInput = false;
            });
          }
          if (state.chat.isClosed! &&
              state.chat.isConfirmed &&
              state.chat.isConfirmedByRecipient &&
              !state.chat.hasReview! &&
              !_isDialogOpen) {
            _isDialogOpen = true;
            showDialog(
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
                  child: FeedbackDialog(
                    chatId: widget.chatId,
                    isClosed: true,
                  ),
                );
              },
            ).then((_) {
              _isDialogOpen = false;
            });
          }
          return null;
        },
        successFinish: (state) {
          CustomNavigator.pop();
          BlocProvider.of<ChatDetailsBloc>(context).add(
            ChatDetailsEvent.fetchChatDetailsRequested(chatId: widget.chatId),
          );
          return null;
        },
        successAccept: (state) => setState(() {
          BlocProvider.of<ChatDetailsBloc>(context).add(
            ChatDetailsEvent.fetchChatDetailsRequested(chatId: widget.chatId),
          );
        }),
        successDecline: (state) => CustomNavigator.pop(),
        orElse: () => {},
      ),
      buildWhen: (contextBuild, state) => state.maybeMap(
        loading: (_) => true,
        success: (_) => true,
        error: (_) => false,
        orElse: () => false,
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
              actions: !state.chat.isClosed!
                  ? [
                      PopupMenuButton(
                        padding: const EdgeInsets.only(right: 24, top: 10),
                        surfaceTintColor: CwColors.subButton,
                        color: CwColors.customWhite,
                        iconColor: CwColors.subButton,
                        offset: const Offset(0, 56),
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
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              enabled: false,
                              child: Center(
                                child: CwElevatedButton(
                                  block: true,
                                  style: ElevatedButtonStyle.reversal,
                                  text: 'Добавить в календарь',
                                  onTap: () => {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (_) {
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
                                    )
                                  },
                                ),
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'closeDialog',
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              enabled: false,
                              child: Center(
                                child: CwElevatedButton(
                                  block: true,
                                  style: ElevatedButtonStyle.reversal,
                                  text: 'Закончить общение',
                                  onTap: () => {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (BuildContext context) {
                                        return BlocProvider<ChatDetailsBloc>.value(
                                          value: contextBuild.read<ChatDetailsBloc>(),
                                          child: FinishChatDialog(
                                            chatId: widget.chatId,
                                            finishChat: () {
                                              CustomNavigator.pop();
                                              showDialog(
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
                                                    child: FeedbackDialog(
                                                      chatId: widget.chatId,
                                                      isClosed: state.chat.isClosed!,
                                                    ),
                                                  );
                                                },
                                              ).then((_) {
                                                _isDialogOpen = false;
                                              });
                                            },
                                          ),
                                        );
                                      },
                                    )
                                  },
                                ),
                              ),
                            ),
                          ],
                          if (state.chat.recipientIsExpert!) ...[
                            PopupMenuItem<String>(
                              value: 'boostResponse',
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              child: Center(
                                child: CwElevatedButton(
                                  block: true,
                                  style: ElevatedButtonStyle.reversal,
                                  text: 'Ускорить ответ',
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return BlocProvider(
                                          create: (contextBuild) => PaymentBloc(
                                            paymentRepository: PaymentRepository(
                                              mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                                            ),
                                            snackBarRepository: CustomInjector.find<SnackBarRepository>(),
                                          ),
                                          child: BoostResponseDialog(chatId: state.chat.id),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ]
                  : null,
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
                child: ChatAvatarWidget(
                  id: state.chat.user!.id!,
                  isExpert: state.chat.recipientIsExpert!,
                  name: state.chat.user!.companyName != null
                      ? state.chat.user!.companyName!
                      : state.chat.recipientIsExpert!
                          ? 'Эксперт ${state.chat.user!.firstName}'
                          : '${state.chat.user!.firstName} ${state.chat.user!.lastName}',
                  rating: state.chat.user!.rating ?? 0,
                  status: _getUserStatus(state.chat.user!.lastSeen),
                  image: state.chat.user!.avatar?.image,
                ),
              ),
            ),
            if (state.chat.searchRequest != null && state.chat.isConfirmed && state.chat.isConfirmedByRecipient) ...[
              SliverToBoxAdapter(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: isHeaderVisible ? null : 0.0,
                  child: isHeaderVisible
                      ? ChatTaskWidget(
                          taskId: state.chat.searchRequest!.id,
                          title: state.chat.searchRequest!.name,
                          description: state.chat.searchRequest!.description ?? '',
                          industry: state.chat.searchRequest!.industry?.name ?? '',
                          subindustry: state.chat.searchRequest!.subindustry?.name ?? '',
                          function: state.chat.searchRequest!.function?.name ?? '',
                          subfunction: state.chat.searchRequest!.subfunction?.name ?? '',
                          isClosed: state.chat.searchRequest?.type == TaskType.closed,
                          isExpert: !state.chat.recipientIsExpert!,
                        )
                      : const SizedBox.shrink(),
                ),
              ),
            ],
          ],
          body: Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: ((!state.chat.isConfirmed || !state.chat.isConfirmedByRecipient) && state.chat.searchRequest != null)
                      ? SearchRequestWidget(
                          name: state.chat.searchRequest!.name,
                          description: state.chat.searchRequest!.description ?? '',
                          industry: state.chat.searchRequest!.industry?.name ?? '',
                          chatId: widget.chatId,
                          searchRequestId: state.chat.searchRequest!.id,
                          isConfirmed: state.chat.isConfirmed,
                          isClosed: state.chat.isClosed!,
                          isExpert: !state.chat.recipientIsExpert!,
                        )
                      : ListView.builder(
                          reverse: true,
                          physics: const BouncingScrollPhysics(),
                          controller: _controller,
                          itemCount: state.messages.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                if (state.chat.isConfirmed &&
                                    state.chat.isConfirmedByRecipient &&
                                    !state.messages.any((m) => m.markedAsDeleted == true) &&
                                    index + 1 == state.messages.length) ...[
                                  MessageItem(
                                    currentUserId: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                                          success: (state) => state.user.id,
                                          orElse: () => 0,
                                        ),
                                    isAcceptedInfo: true,
                                    message: null,
                                    availableUntil: null,
                                  ),
                                  MessageItem(
                                    currentUserId: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                                          success: (state) => state.user.id,
                                          orElse: () => 0,
                                        ),
                                    isDeletingInfo: true,
                                    message: null,
                                    availableUntil: null,
                                  ),
                                ],
                                if (index > 0 &&
                                    !state.messages[index - 1].markedAsDeleted &&
                                    state.messages[index].datetimeCreated.day != state.messages[index - 1].datetimeCreated.day) ...[
                                  Center(
                                    child: Text(
                                      DateFormat('EEEE, d MMMM').format(state.messages[index].datetimeCreated),
                                      style: CwTextStyles.chatDateMsg,
                                    ),
                                  )
                                ],
                                if (!state.messages[index].markedAsDeleted) ...[
                                  MessageItem(
                                    currentUserId: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                                          success: (state) => state.user.id,
                                          orElse: () => 0,
                                        ),
                                    message: state.messages[index],
                                    availableUntil: state.messages[index].availableUntil,
                                  ),
                                ],
                                if (state.chat.isClosed! && index == 0 && !state.messages[0].markedAsDeleted == true) ...[
                                  MessageItem(
                                    currentUserId: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                                          success: (state) => state.user.id,
                                          orElse: () => 0,
                                        ),
                                    isClosedInfo: true,
                                    message: null,
                                    availableUntil: null,
                                  ),
                                ],
                              ],
                            );
                          },
                        ),
                ),
                const SizedBox(height: 8),
                if (isEnabledInput)
                  InputMessageBar(
                    chatId: widget.chatId,
                    isPremium: _getIsPremium(context),
                    currentSize: state.chat.attachmentsSize,
                  )
                else if (!state.chat.isConfirmedByRecipient && state.chat.isConfirmed) ...[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: CwColors.subButton,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          state.chat.isClosed!
                              ? Text(
                                  'Собеседник отклонил предложение',
                                  style: CwTextStyles.chatSystemMsg.withColor(CwColors.primary),
                                )
                              : Text(
                                  'Ожидайте ответ собеседника',
                                  style: CwTextStyles.chatSystemMsg.withColor(CwColors.primary),
                                ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
                if (state.chat.willBeDeletedAt != null && !isEnabledInput) ...[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: CwColors.bgGray,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Чат будет удален через ${state.chat.willBeDeletedAt!.difference(DateTime.now()).inHours} ч',
                            style: CwTextStyles.chatSystemMsg.withColor(CwColors.subText),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ],
            ),
          ),
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }
}
