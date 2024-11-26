part of 'input_message_bloc.dart';

@freezed
class InputMessageEvent with _$InputMessageEvent {
  const factory InputMessageEvent.sendMessageRequested({
    required String? text,
    required int chatId,
    List<CustomFile>? files,
  }) = _SendMessageRequestedEvent;
}
