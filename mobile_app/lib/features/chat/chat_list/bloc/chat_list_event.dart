part of 'chat_list_bloc.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent.fetchChatListRequested() = _FetchChatListRequestedEvent;

  const factory ChatListEvent.chatListUpdateRequested({required SocketMessageModel newMessage}) = _ChatListUpdateRequestedEvent;

  const factory ChatListEvent.chatListReadRequested({required SocketMessageModel newMessage}) = _ChatListReadRequestedEvent;
}
