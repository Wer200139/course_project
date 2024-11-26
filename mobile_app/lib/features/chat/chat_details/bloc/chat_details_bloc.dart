import 'dart:async';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:clokwise/common/utils/context_holder.dart';
import 'package:clokwise/common/utils/custom_file.dart';
import 'package:clokwise/common/utils/vars.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/attachment_model.dart';
import 'package:clokwise/features/repositories/chats/models/chat_list_model.dart';
import 'package:clokwise/features/repositories/chats/models/message_model.dart';
import 'package:clokwise/features/repositories/chats/models/socket_message_model.dart';
import 'package:clokwise/features/repositories/chats/requests/send_message_request.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/packages/core/file_type_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_details_bloc.freezed.dart';

part 'chat_details_event.dart';

part 'chat_details_state.dart';

class ChatDetailsBloc extends Bloc<ChatDetailsEvent, ChatDetailsState> {
  final ChatRepository _chatRepository;
  final int chatId;
  final SnackBarRepository _snackBarRepository;

  late final StreamSubscription<SocketMessageModel> _chatMessageStreamSubscription;

  ChatDetailsBloc({
    required this.chatId,
    required ChatRepository chatsRepository,
    required SnackBarRepository snackBarRepository,
  })  : _chatRepository = chatsRepository,
        _snackBarRepository = snackBarRepository,
        super(const ChatDetailsState.initial()) {
    on<ChatDetailsEvent>(
      (event, emit) => event.map(
        fetchChatDetailsRequested: (event) => _onFetchChatDetailsRequested(event, emit),
        fetchChatSupportDetailsRequested: (event) => _onFetchChatSupportDetailsRequested(event, emit),
        addEventCalendar: (event) => _onAddEventCalendar(event),
        finishChattingRequested: (event) => _onFinishChatting(event, emit),
        declineRequested: (event) => _onDecline(event, emit),
        updateChatRequested: (event) => _onUpdateChat(event, emit),
        acceptChattingRequested: (event) => _onAcceptChatting(event, emit),
        markMessageAsReadRequested: (event) => _onMarkMessageAsReadRequested(event, emit),
        sendReview: (event) => _onSendReviewRequested(event, emit),
      ),
    );
    _chatMessageStreamSubscription = _chatRepository.chatMessageStream.listen(
      (message) => add(ChatDetailsEvent.updateChatRequested(newMessage: message)),
    );
  }

  @override
  Future<void> close() async {
    _chatMessageStreamSubscription.cancel();

    return super.close();
  }

  Future<void> _onSendReviewRequested(
    _SendReviewRequestedEvent event,
    emit,
  ) async {
    try {
      await _chatRepository.sendReview(
        chatId: event.chatId,
        rating: event.rating,
        text: event.text,
      );

      emit(const ChatDetailsState.sendReview());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print(e.toString());
    }
  }

  Future<void> _onMarkMessageAsReadRequested(
    _MarkMessageAsReadRequestedEvent event,
    emit,
  ) async {
    try {
      _chatRepository.markMessageAsRead(chatId: event.chatId);
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print('FROM CHAT LIST MARK MESSAGE ${e.toString()}');
    }
  }

  Future<void> _onAcceptChatting(
    _AcceptChattingRequestedEvent event,
    emit,
  ) async {
    try {
      _chatRepository.confirmChatting(chatId: event.chatId);
      emit(const ChatDetailsState.successAccept());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print('FROM CHAT DETAILS ${e.toString()}');
    }
  }

  Future<void> _onUpdateChat(
    _ChatUpdateRequestedEvent event,
    emit,
  ) async {
    try {
      switch (event.newMessage.type) {
        case SocketMessageType.closed:
          final chatInfo = await _chatRepository.getChat(chatId: event.newMessage.chatId!);
          final messages = await _chatRepository.getMessages(chatId: event.newMessage.chatId!);

          emit(ChatDetailsState.success(chat: chatInfo, messages: messages));

        case SocketMessageType.chattingConfirmed:
          final chatInfo = await _chatRepository.getChat(chatId: event.newMessage.chat!.id);
          final messages = await _chatRepository.getMessages(chatId: event.newMessage.chat!.id);

          emit(ChatDetailsState.success(chat: chatInfo, messages: messages));

        case SocketMessageType.chatDeclined:
          emit(const ChatDetailsState.successDecline());

        default:
          break;
      }
/*      if (event.newMessage.type == SocketMessageType.chatHasBeenRead && chatId == event.newMessage.chatId) {
        state.mapOrNull(
          success: (state) async {
            final messages = state.messages.map((message) {
              // Если сообщение не было прочитано, создаем новое сообщение с обновленным временем прочтения
              if (message.datetimeRead == null) {
                return MessageModel(
                  id: message.id,
                  datetimeCreated: message.datetimeCreated,
                  text: message.text,
                  fromUser: message.fromUser ,
                  attachments: message.attachments,
                  datetimeRead: DateTime.now(),
                  availableUntil: DateTime.now().add(const Duration(days: 1)),
                  markedAsDeleted: message.markedAsDeleted,
                );
              }
              // Возвращаем оригинальное сообщение, если оно уже прочитано
              return message;
            }).toList();

            emit(ChatDetailsState.success(chat: state.chat, messages: messages));
          },
        );
      }*/
      if (event.newMessage.type == SocketMessageType.newMessage && chatId == event.newMessage.chatId) {
        state.mapOrNull(
          success: (state) async {
            final currentUserId = GlobalVars.currentUserId;

            ChatListModel updatedChat = ChatListModel(
              id: state.chat.id,
              user: state.chat.user,
              searchRequest: state.chat.searchRequest,
              lastMessages: state.chat.lastMessages,
              isConfirmed: state.chat.isConfirmed == true
                  ? true
                  : event.newMessage.message!.fromUser.id! == currentUserId
                      ? true
                      : false,
              isConfirmedByRecipient: state.chat.isConfirmedByRecipient == true
                  ? true
                  : event.newMessage.message!.fromUser.id! != currentUserId
                      ? true
                      : false,
              unreadMessagesCount: event.newMessage.message!.fromUser.id != currentUserId
                  ? state.chat.unreadMessagesCount + 1
                  : state.chat.unreadMessagesCount,
              isClosed: state.chat.isClosed,
              hasReview: state.chat.hasReview,
              recipientIsExpert: state.chat.recipientIsExpert,
              attachmentsSize: state.chat.attachmentsSize,
            );

            emit(
              ChatDetailsState.success(
                chat: updatedChat,
                messages: [event.newMessage.message!, ...state.messages],
              ),
            );
          },
        );
      }
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print('FROM CHAT DETAILS ${e.toString()}');
    }
  }

  Future<void> _onDecline(
    _DeclineRequestedEvent event,
    emit,
  ) async {
    try {
      await _chatRepository.declineChat(chatId: event.chatId);

      _snackBarRepository.addSuccess(text: 'Предложение отклонено');
      emit(const ChatDetailsState.successDecline());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print(e.toString());
    }
  }

  Future<void> _onFinishChatting(
    _FinishChattingRequestedEvent event,
    emit,
  ) async {
    try {
      await _chatRepository.finishChatting(
        chatId: event.chatId,
        text: event.text,
        rating: event.rating,
      );

      _snackBarRepository.addSuccess(text: 'Общение завершено');
      emit(const ChatDetailsState.successFinish());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print(e.toString());
    }
  }

  Future<void> _onAddEventCalendar(event) async {
    try {
      Add2Calendar.addEvent2Cal(event.calendarEvent);

      _snackBarRepository.addSuccess(text: 'Событие добавлено в календарь');
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      print(e.toString());
    }
  }

  Future<void> _onFetchChatSupportDetailsRequested(
    _FetchChatSupportDetailsRequestedEvent event,
    Emitter<ChatDetailsState> emit,
  ) async {
    try {
      emit(const ChatDetailsState.loading());

      final chatInfo = await _chatRepository.getSupportChat();
      final messages = await _chatRepository.getMessages(chatId: 0);

      emit(ChatDetailsState.success(chat: chatInfo, messages: messages));

      _chatRepository.markMessageAsRead(chatId: 0);
    } catch (e) {
      _snackBarRepository.addError(text: e.toString().replaceAll(RegExp(r'Exception: '), ''));
      print(e.toString());
      emit(const ChatDetailsState.error());
    }
  }

  Future<void> _onFetchChatDetailsRequested(
    _FetchChatDetailsRequestedEvent event,
    Emitter<ChatDetailsState> emit,
  ) async {
    try {
      emit(const ChatDetailsState.loading());

      final chatInfo = await _chatRepository.getChat(chatId: event.chatId);
      final messages = await _chatRepository.getMessages(chatId: event.chatId);

      emit(ChatDetailsState.success(chat: chatInfo, messages: messages));
    } catch (e) {
      _snackBarRepository.addError(text: e.toString().replaceAll(RegExp(r'Exception: '), ''));
      print(e.toString());
      emit(const ChatDetailsState.error());
    }
  }
}
