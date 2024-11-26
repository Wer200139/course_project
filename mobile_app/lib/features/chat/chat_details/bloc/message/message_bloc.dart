import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_bloc.freezed.dart';
part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final ChatRepository _chatRepository;
  final SnackBarRepository _snackBarRepository;


  MessageBloc({
    required ChatRepository chatRepository,
    required SnackBarRepository snackBarRepository,
  })  : _chatRepository = chatRepository,
        _snackBarRepository = snackBarRepository,
        super(const MessageState.initial()) {
    on<MessageEvent>(
          (event, emit) => event.map(
        downloadFileRequested: (event) =>
            _onDownloadFileRequestedEvent(event, emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    _chatRepository.dispose();

    return super.close();
  }

  Future<void> _onDownloadFileRequestedEvent(
      _DownloadFileRequestedEvent event,
      Emitter<MessageState> emit,
      ) async {
    try {
     _chatRepository.getAttachment(fileId: event.attachmentId);

      _snackBarRepository.addSuccess(text: 'Начато скачивание');
    } catch (e, s) {
      _snackBarRepository.addError(text: 'Ошибка скачивания');
      print(e.toString());
    }

  }
}
