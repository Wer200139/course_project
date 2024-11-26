part of 'chat_details_bloc.dart';

@freezed
class ChatDetailsEvent with _$ChatDetailsEvent {
  const factory ChatDetailsEvent.fetchChatDetailsRequested({
    required int chatId,
  }) = _FetchChatDetailsRequestedEvent;

  const factory ChatDetailsEvent.fetchChatSupportDetailsRequested() = _FetchChatSupportDetailsRequestedEvent;


  const factory ChatDetailsEvent.addEventCalendar({
    required Event calendarEvent,
  }) = _AddEventCalendarEvent;

  const factory ChatDetailsEvent.updateChatRequested({
    required SocketMessageModel newMessage,
  }) = _ChatUpdateRequestedEvent;

  const factory ChatDetailsEvent.acceptChattingRequested({
    required int chatId,
    TaskModel? searchRequest,
  }) = _AcceptChattingRequestedEvent;

  const factory ChatDetailsEvent.finishChattingRequested({
    required int chatId,
    required String text,
    required double rating,
  }) = _FinishChattingRequestedEvent;

  const factory ChatDetailsEvent.declineRequested({
    required int chatId,
  }) = _DeclineRequestedEvent;

  const factory ChatDetailsEvent.sendReview({
    required int chatId,
    required String text,
    required double rating,
  }) = _SendReviewRequestedEvent;

  const factory ChatDetailsEvent.markMessageAsReadRequested({
    required int chatId,
    required ChatListModel previousChat,
  }) = _MarkMessageAsReadRequestedEvent;
}
