part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.downloadFileRequested({required String attachmentId}) = _DownloadFileRequestedEvent;
}
