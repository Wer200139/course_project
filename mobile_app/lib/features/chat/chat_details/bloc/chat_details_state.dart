part of 'chat_details_bloc.dart';

@freezed
class ChatDetailsState with _$ChatDetailsState {
  const factory ChatDetailsState.initial() = _InitialState;

  const factory ChatDetailsState.loading() = _LoadingState;

  const factory ChatDetailsState.success({
    required ChatListModel chat,
    required List<MessageModel> messages,
  }) = _SuccessState;

  const factory ChatDetailsState.successFinish() = _SuccessFinishState;

  const factory ChatDetailsState.successDecline() = _SuccessDeclineState;

  const factory ChatDetailsState.successAccept() = _SuccessAcceptState;

  const factory ChatDetailsState.successSend() = _SuccessSendState;

  const factory ChatDetailsState.error() = _ErrorState;

  const factory ChatDetailsState.sendReview() = _SendReviewState;
}
