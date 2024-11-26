part of 'chat_list_bloc.dart';

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState.initial() = _InitialState;

  const factory ChatListState.loading() = _LoadingState;

  const factory ChatListState.success({required List<ChatListModel> chats, required ChatSupportListModel supportChat}) = _SuccessState;

  const factory ChatListState.error() = _ErrorState;
}
