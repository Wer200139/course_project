import 'package:clokwise/common/utils/custom_file.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/attachment_model.dart';
import 'package:clokwise/features/repositories/chats/requests/send_message_request.dart';
import 'package:clokwise/packages/core/file_type_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_message_bloc.freezed.dart';

part 'input_message_event.dart';

part 'input_message_state.dart';

class InputMessageBloc extends Bloc<InputMessageEvent, InputMessageState> {
  final ChatRepository _chatRepository;

  InputMessageBloc({
    required chatRepository,
  })  : _chatRepository = chatRepository,
        super(const InputMessageState.initial()) {
    on<InputMessageEvent>(
      (event, emit) => event.map(
        sendMessageRequested: (event) => _onSendMessage(event, emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    return super.close();
  }


  bool isImageFile(FileTypeInfo fileType) {
    return fileType == FileTypeInfo.jpg || fileType == FileTypeInfo.png || fileType == FileTypeInfo.jpeg || fileType == FileTypeInfo.jpeg_2;
  }

  Future<void> _onSendMessage(
    _SendMessageRequestedEvent event,
    emit,
  ) async {
    try {
      emit(const InputMessageState.loading());
      if(event.files == null || event.files!.isEmpty) {
        emit(const InputMessageState.success());
      }

      List<AttachmentModel> attachments = [];
      if (event.files != null && event.files!.isNotEmpty) {
        for (var file in event.files!) {
          AttachmentModel? uploadedFile;

          if (isImageFile(file.fileTypeInfo)) {
            uploadedFile = await _chatRepository.uploadImage(
              chatId: event.chatId,
              image: file,
            );
          } else {
            uploadedFile = await _chatRepository.uploadFile(
              chatId: event.chatId,
              file: file,
            );
          }
          attachments.add(uploadedFile);
        }
      }
      int totalFileSize = attachments.fold<int>(0, (sum, attachment) => sum + (attachment.fileSize));

      emit(InputMessageState.success(currentSize: totalFileSize));

      _chatRepository.sendMessage(
        messageRequest: SendMessageRequest(
          text: event.text,
          chatId: event.chatId,
          attachments: attachments.isNotEmpty ? attachments.map((a) => a.id).toList() : null,
        ),
      );
    } catch (e) {
      emit(InputMessageState.initial());
      print(e.toString());
    }
  }
}
