part of 'avatar_bloc.dart';

@freezed
class AvatarEvent with _$AvatarEvent {
  const factory AvatarEvent.fetchAvatarEventRequested() = _FetchAvatarEventRequestedEvent;

  const factory AvatarEvent.saveAvatarEventRequested({required int id}) = _SaveAvatarEventRequestedEvent;
}
