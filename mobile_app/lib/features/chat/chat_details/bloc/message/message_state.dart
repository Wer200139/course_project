part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _InitialState;

  const factory MessageState.loading() = _LoadingState;

  const factory MessageState.success({required dynamic file}) = _SuccessState;

  const factory MessageState.error() = _ErrorState;
}
