part of 'avatar_bloc.dart';

@freezed
class AvatarState with _$AvatarState {
  const factory AvatarState.initial() = _InitialState;

  const factory AvatarState.loading() = _LoadingState;

  const factory AvatarState.success({required List<AvatarModel> avatars}) = _SuccessState;

  const factory AvatarState.successSave() = _SuccessSaveState;

  const factory AvatarState.error() = _ErrorState;
}
