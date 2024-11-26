part of 'input_message_bloc.dart';

@freezed
class InputMessageState with _$InputMessageState {
  const factory InputMessageState.initial() = _InitialState;

  const factory InputMessageState.loading() = _LoadingState;

  const factory InputMessageState.success({int? currentSize}) = _SuccessState;

  const factory InputMessageState.error() = _ErrorState;
}
