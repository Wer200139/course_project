part of 'snack_bar_bloc.dart';

@freezed
class SnackBarState with _$SnackBarState {
  const factory SnackBarState.initial() = _InitialState;

  const factory SnackBarState.loading() = _LoadingState;

  const factory SnackBarState.push({
    required String text,
  }) = _PushState;

  const factory SnackBarState.info({
    required String text,
  }) = _InfoState;

  const factory SnackBarState.warning({
    required String text,
  }) = _WarningState;

  const factory SnackBarState.success({
    required String text,
  }) = _SuccessState;

  const factory SnackBarState.error({
    required String text,
  }) = _ErrorState;
}
