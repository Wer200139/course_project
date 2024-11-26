import 'dart:async';

import 'package:clokwise/common/utils/context_holder.dart';
import 'package:clokwise/common/utils/vars.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/chat_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/chat_support_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/chats_model.dart';
import 'package:clokwise/features/repositories/chats/models/socket_message_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_list_bloc.freezed.dart';

part 'chat_list_event.dart';

part 'chat_list_state.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final ChatRepository _chatRepository;
  final SnackBarRepository _snackBarRepository;
  late final StreamSubscription<SocketMessageModel> _chatMessageStreamSubscription;

  ChatListBloc({
    required ChatRepository chatRepository,
    required SnackBarRepository snackBarRepository,
  })  : _chatRepository = chatRepository,
        _snackBarRepository = snackBarRepository,
        super(const ChatListState.initial()) {
    on<ChatListEvent>(
      (event, emit) => event.map(
        fetchChatListRequested: (event) => _onFetchChatListRequested(emit),
        chatListUpdateRequested: (event) => _onChatListUpdateRequested(event, emit),
        chatListReadRequested: (event) => _onChatListReadRequested(event, emit),
      ),
    );

    _chatMessageStreamSubscription = _chatRepository.chatMessageStream.listen(
      (message) => add(ChatListEvent.chatListUpdateRequested(newMessage: message)),
    );
  }

  @override
  Future<void> close() async {
    _chatMessageStreamSubscription.cancel();

    return super.close();
  }

  ///TODO переделать логику, чтобы избавиться от authbloc
  Future<void> _onChatListReadRequested(
    _ChatListReadRequestedEvent event,
    Emitter<ChatListState> emit,
  ) async {
    try {
      state.mapOrNull(
        success: (state) {
          List<ChatListModel> chats = state.chats.toList();

          /// Изменение чата при получении нового сообщения по сокету
          if (event.newMessage.type == SocketMessageType.markChatAsRead) {
            final existingChatIndex = chats.indexWhere((chat) => chat.id == event.newMessage.chat!.id);

            if (existingChatIndex != -1) {
              final updatedChat = chats[existingChatIndex];

              final newChat = ChatListModel(
                  id: updatedChat.id,
                  user: updatedChat.user,
                  searchRequest: updatedChat.searchRequest,
                  lastMessages: updatedChat.lastMessages,
                  isConfirmed: updatedChat.isConfirmed,
                  isConfirmedByRecipient: updatedChat.isConfirmedByRecipient,
                  unreadMessagesCount: 0,
                  isClosed: updatedChat.isClosed,
                  hasReview: updatedChat.hasReview,
                  recipientIsExpert: updatedChat.recipientIsExpert,
                  attachmentsSize: updatedChat.attachmentsSize);

              chats = List.from(chats)
                ..removeAt(existingChatIndex)
                ..insert(existingChatIndex, newChat);
            }

            emit(state.copyWith(chats: chats));
          }
        },
      );
    } catch (e, s) {
      print(e.toString());
      _snackBarRepository.addError(text: e.toString());
      emit(const ChatListState.error());
    }
  }

  Future<void> _onChatListUpdateRequested(
    _ChatListUpdateRequestedEvent event,
    Emitter<ChatListState> emit,
  ) async {
    try {
      state.mapOrNull(
        success: (state) async {
          List<ChatListModel> chats = state.chats.toList();

          final currentUserId = GlobalVars.currentUserId;

          /// Изменение чата при получении нового сообщения по сокету
          switch (event.newMessage.type) {
            case SocketMessageType.newMessage:
              final existingChatIndex = chats.indexWhere((chat) => chat.id == event.newMessage.chatId);

              if (existingChatIndex != -1) {
                final updatedChat = chats[existingChatIndex];
                if (updatedChat.lastMessages.isNotEmpty) {
                  updatedChat.lastMessages.first = event.newMessage.message!;
                } else {
                  updatedChat.lastMessages.add(event.newMessage.message!);
                }

                chats.removeAt(existingChatIndex);
                chats.insert(
                    0,
                    currentUserId != event.newMessage.message!.fromUser.id
                        ? ChatListModel(
                            id: updatedChat.id,
                            user: updatedChat.user,
                            searchRequest: updatedChat.searchRequest,
                            lastMessages: updatedChat.lastMessages,
                            isConfirmed: updatedChat.isConfirmed,
                            isConfirmedByRecipient: updatedChat.isConfirmedByRecipient,
                            unreadMessagesCount: updatedChat.unreadMessagesCount + 1,
                            isClosed: isClosed,
                            hasReview: updatedChat.hasReview,
                            recipientIsExpert: updatedChat.recipientIsExpert,
                            attachmentsSize: updatedChat.attachmentsSize,
                          )
                        : updatedChat);
              }

            case SocketMessageType.closed:
              final existingChatIndex = chats.indexWhere((chat) => chat.id == event.newMessage.chatId);

              if (existingChatIndex != -1) {
                chats[existingChatIndex] = chats[existingChatIndex].copyWith(isClosed: true);
              }

            case SocketMessageType.chattingConfirmed:
              final existingChatIndex = chats.indexWhere((chat) => chat.id == event.newMessage.chat!.id);

              if (existingChatIndex != -1) {
                chats[existingChatIndex] = event.newMessage.chat!;
              }

            case SocketMessageType.chatDeclined:
              final existingChatIndex = chats.indexWhere((chat) => chat.id == event.newMessage.chat!.id);

              if (existingChatIndex != -1) {
                chats[existingChatIndex] = event.newMessage.chat!;
              }

            case SocketMessageType.newChat:
              chats.insert(0, event.newMessage.chat!);

            default:
              break;
          }

          emit(state.copyWith(chats: chats));
        },
      );
    } catch (e, s) {
      print('FROM CHAT LIST ${e.toString()} ${s.toString()}');
      _snackBarRepository.addError(text: e.toString());
      emit(const ChatListState.error());
    }
  }

  Future<void> _onFetchChatListRequested(
    Emitter<ChatListState> emit,
  ) async {
    try {
      emit(const ChatListState.loading());

      ChatsModel chats = await _chatRepository.getChats();

      /*   int totalUnreadMessagesCount = chats.chats.fold<int>(
        chats.supportChat.unreadMessagesCount,
        (sum, chat) => sum + chat.unreadMessagesCount,
      );
*/
      emit(ChatListState.success(
        chats: chats.chats,
        supportChat: chats.supportChat,
      ));
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ChatListState.error());
    }
  }
}
