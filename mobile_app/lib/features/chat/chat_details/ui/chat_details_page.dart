import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/managers/local_notification_manager/local_notification_manager.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/chat_details_body.dart';
import 'package:clokwise/features/chat/chat_details/ui/widgets/chat_details_support_body.dart';
import 'package:clokwise/features/chat/chat_list/bloc/chat_list_bloc.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/chat_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/socket_message_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatDetailsPage extends StatefulWidget {
  final int id;

  const ChatDetailsPage({
    super.key,
    required this.id,
  });

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  late ChatListModel chat;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatDetailsBloc(
        chatsRepository: ChatRepository(mainNetworkClient: CustomInjector.find<MainNetworkClient>()),
        snackBarRepository: CustomInjector.find<SnackBarRepository>(),
        chatId: widget.id,
      )..add(widget.id == 0
          ? const ChatDetailsEvent.fetchChatSupportDetailsRequested()
          : ChatDetailsEvent.fetchChatDetailsRequested(chatId: widget.id)),
      child: BlocListener<ChatDetailsBloc, ChatDetailsState>(
        listenWhen: (prev, cur) => cur.maybeMap(
          success: (_) => true,
          orElse: () => false,
        ),
        listener: (context, state) => state.maybeMap(
          success: (state) {
            chat = state.chat;

            BlocProvider.of<ChatDetailsBloc>(context).add(
              ChatDetailsEvent.markMessageAsReadRequested(chatId: widget.id, previousChat: state.chat),
            );
            BlocProvider.of<ChatListBloc>(context).add(
              ChatListEvent.chatListReadRequested(
                newMessage: SocketMessageModel(type: SocketMessageType.markChatAsRead, chat: state.chat),
              ),
            );
            BlocProvider.of<AuthBloc>(context).add(
              AuthEvent.chatListUpdated(
                message: SocketMessageModel(type: SocketMessageType.markChatAsRead, chat: state.chat),
              ),
            );
          },
          orElse: () => {},
        ),
        child: CWScaffold(
          backgroundColor: CwColors.customWhite,
          appBar: CwAppBar(
            backgroundColor: CwColors.primary,
            title: SvgPicture.asset(height: 18, width: 18, Assets.imageCLOKWISE, color: CwColors.customWhite),
            leading: Container(
              margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: CwIconButton(
                width: 30,
                height: 30,
                borderRadius: 6,
                icon: SvgPicture.asset(Assets.imageArrowLeft),
                onTap: () => CustomNavigator.pop(),
                backgroundColor: CwColors.subButtonInverse,
              ),
            ),
            actions: [
              Row(
                children: [
                  const Text(
                    'Ru',
                    style: TextStyle(color: CwColors.customWhite),
                  ),
                  CwIconButton(
                    icon: SvgPicture.asset(
                      Assets.imageDown,
                      color: CwColors.customWhite,
                    ),
                    onTap: () => setState(() {}),
                  )
                ],
              )
            ],
          ),
          body: PopScope(
            onPopInvokedWithResult: (didPop, some) async {
              BlocProvider.of<ChatListBloc>(context).add(
                ChatListEvent.chatListReadRequested(
                  newMessage: SocketMessageModel(type: SocketMessageType.markChatAsRead, chat: chat),
                ),
              );
              BlocProvider.of<AuthBloc>(context).add(
                AuthEvent.chatListUpdated(
                  message: SocketMessageModel(type: SocketMessageType.markChatAsRead, chat: chat),
                ),
              );

              return;
            },
            child: widget.id != 0 ? ChatDetailsBody(chatId: widget.id) : ChatDetailsSupportBody(chatId: widget.id),
          ),
        ),
      ),
    );
  }
}
