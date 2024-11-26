import 'dart:io';

import 'package:clokwise/common/blocs/payment_bloc/payment_bloc.dart';
import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/utils/custom_file.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/features/chat/chat_details/bloc/input_message/input_message_bloc.dart';
import 'package:clokwise/features/chat/chat_details/ui/modals/file_premium_dialog.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/snackbar/ui/show_snack_bar.dart';
import 'package:clokwise/flutter_popup-3.3.0/lib/flutter_popup.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/file_type_info.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:path/path.dart' show basename;

class InputMessageBar extends StatefulWidget {
  final int chatId;
  final bool isPremium;
  final int currentSize;

  const InputMessageBar({
    super.key,
    required this.chatId,
    required this.isPremium,
    required this.currentSize,
  });

  @override
  State<InputMessageBar> createState() => _InputMessageBarState();
}

class _InputMessageBarState extends State<InputMessageBar> {
  List<CustomFile> attachmentFiles = [];
  final _messageController = FormControl<String>(
    value: '',
    validators: [],
  );

  bool _isFocused = false;
  bool isFormReady = false;
  bool isLoading = false;

  static const maxSizeLimitPremium = 1073741824;
  static const maxSizeLimitNonPremium = 104857600;
  static const maxSizeLimitMessage = 10485760;
  late int currentSize;

  bool getTotalSizeValid(List<CustomFile> files, bool isPremium) {
    int totalSize = files.fold<int>(0, (sum, file) => sum + file.bytes.length);

    if (isPremium) {
      int remainingSizePremium = maxSizeLimitPremium - currentSize;

      return totalSize < remainingSizePremium;
    } else {
      int remainingSizeNonPremium = maxSizeLimitNonPremium - currentSize;

      return totalSize < remainingSizeNonPremium && totalSize < maxSizeLimitMessage;
    }
  }

  bool getStatusFormReady() {
    bool isMessageReady = _messageController.value!.isNotEmpty;
    bool isFilesReady = attachmentFiles.isNotEmpty;

    return isMessageReady || isFilesReady;
  }

  @override
  void initState() {
    currentSize = widget.currentSize;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InputMessageBloc(
        chatRepository: ChatRepository(mainNetworkClient: CustomInjector.find<MainNetworkClient>()),
      ),
      child: BlocListener<InputMessageBloc, InputMessageState>(
        listener: (context, state) => state.maybeMap(
            initial: (_) => setState(() {
                  isLoading = false;
                }),
            loading: (state) => setState(() {
                  isLoading = true;
                }),
            success: (state) => setState(() {
                  isLoading = false;
                  _messageController.value = '';
                  attachmentFiles.clear();
                  isFormReady = false;
                  currentSize += state.currentSize ?? 0;
                }),
            orElse: () => {}),
        child: LayoutBuilder(
          builder: (context, constraints) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (attachmentFiles.isNotEmpty) // Проверяем наличие файлов
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 0,
                    left: 18,
                    right: 18,
                  ),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CwColors.primary.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    border: const Border(
                      top: BorderSide(color: CwColors.primary),
                      left: BorderSide(color: CwColors.primary),
                      right: BorderSide(color: CwColors.primary),
                      bottom: BorderSide.none,
                    ),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: attachmentFiles.length,
                        itemBuilder: (context, index) {
                          var attachmentFile = attachmentFiles[index]; // Сам файл
                          double fileSizeInMB = attachmentFile.bytes.length / (1024 * 1024);

                          return Container(
                            width: 100, // Ширина каждого файла
                            margin: const EdgeInsets.symmetric(horizontal: 4.0),
                            child: Stack(
                              children: [
                                Container(
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    color: CwColors.separatorGrayV2,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16),
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        if (isImageFile(attachmentFile.fileTypeInfo)) ...[
                                          Image.memory(
                                            attachmentFile.bytes,
                                            width: double.infinity,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                        if (attachmentFile.fileTypeInfo == FileTypeInfo.unknown) ...[
                                          Container(
                                            margin: const EdgeInsets.only(
                                              left: 8,
                                              top: 8,
                                            ),
                                            height: 36,
                                            width: 36,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: CwColors.separatorGray,
                                            ),
                                            child: const Center(
                                              child: Icon(
                                                Icons.file_present_sharp,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                            ),
                                            child: Text(
                                              basename(attachmentFile.fileName!),
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                            ),
                                            child: Text(
                                              '${fileSizeInMB.toStringAsFixed(2)} МБ',
                                              softWrap: true,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 4,
                                  right: 8,
                                  child: isLoading
                                      ? const Center(
                                          child: SizedBox.square(
                                            child: RepaintBoundary(
                                              child: CircularProgressIndicator(
                                                color: CwColors.primary,
                                                strokeWidth: 2,
                                              ),
                                            ),
                                          ),
                                        )
                                      : CwIconButton(
                                          width: 24,
                                          height: 24,
                                          backgroundColor: Colors.white60,
                                          icon: const Icon(
                                            Icons.close,
                                            color: CwColors.primary,
                                            size: 18,
                                          ),
                                          onTap: () {
                                            setState(() {
                                              attachmentFiles.removeAt(index);
                                            });
                                          },
                                        ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              Container(
                //  padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
                margin: const EdgeInsets.only(
                  bottom: 20,
                  left: 18,
                  right: 18,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: _isFocused ? CwColors.primary : Colors.grey),
                    left: BorderSide(color: _isFocused ? CwColors.primary : Colors.grey),
                    right: BorderSide(color: _isFocused ? CwColors.primary : Colors.grey),
                    bottom: BorderSide(color: _isFocused ? CwColors.primary : Colors.grey),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(attachmentFiles.isNotEmpty ? 0 : 10),
                    topLeft: Radius.circular(attachmentFiles.isNotEmpty ? 0 : 10),
                    bottomLeft: const Radius.circular(10),
                    bottomRight: const Radius.circular(10),
                  ),
                ),
                child: Focus(
                  onFocusChange: (hasFocus) {
                    setState(() {
                      _isFocused = hasFocus;
                    });
                  },
                  child: Row(
                    children: [
                      Expanded(
                        child: CwTextField(
                          topPadding: 0,
                          hintText: 'Введите текст сообщения',
                          hasSpaceForError: false,
                          minLines: 1,
                          maxLines: 3,
                          controller: _messageController,
                          onChanged: (_) => setState(() {
                            isFormReady = getStatusFormReady();
                          }),
                          border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          prefixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: 12),
                              CustomPopup(
                                content: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CwIconButton(
                                      width: 28,
                                      height: 28,
                                      icon: const Icon(Icons.file_copy),
                                      onTap: _uploadFile,
                                    ),
                                    const SizedBox(width: 4),
                                    CwIconButton(
                                      width: 28,
                                      height: 28,
                                      icon: const Icon(Icons.image),
                                      onTap: _uploadImage,
                                    ),
                                  ],
                                ),
                                child: SvgPicture.asset(
                                  width: 26,
                                  height: 26,
                                  Assets.imageAttach,
                                ),
                                onTap: () => {},
                                onDismissed: () => {},
                              ),
                            ],
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CwIconButton(
                                width: 28,
                                height: 28,
                                isLoading: isLoading,
                                icon: SvgPicture.asset(
                                  Assets.imageSend,
                                ),
                                onTap: isFormReady
                                    ? () {
                                        BlocProvider.of<InputMessageBloc>(context).add(
                                          InputMessageEvent.sendMessageRequested(
                                            text: _messageController.value!.isEmpty ? null : _messageController.value!,
                                            chatId: widget.chatId,
                                            files: attachmentFiles.isEmpty ? null : attachmentFiles,
                                          ),
                                        );
                                      }
                                    : () => {},
                              ),
                              const SizedBox(width: 12),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isImageFile(FileTypeInfo fileType) {
    return fileType == FileTypeInfo.jpg || fileType == FileTypeInfo.png || fileType == FileTypeInfo.jpeg || fileType == FileTypeInfo.jpeg_2;
  }

  Future<void> _uploadImage() async {
    try {
      final ImagePicker picker = ImagePicker();

      final List<XFile>? result = await picker.pickMultiImage();

      if (result == null) return;

      List<CustomFile> tempFiles = List.from(attachmentFiles);

      for (var file in result) {
        final bytes = await file.readAsBytes();

        final FileTypeInfo fileType = FileTypeInfo.getFileFormat(bytes);

        tempFiles.add(CustomFile(
          bytes: bytes,
          fileName: file.path,
          fileTypeInfo: fileType,
        ));

        if (!getTotalSizeValid(tempFiles, widget.isPremium)) {
          if (!widget.isPremium) {
            _showPremiumDialog();
          }
          _showInfoSnackBar();

          return;
        }
      }

      setState(() {
        attachmentFiles = tempFiles;

        isFormReady = getStatusFormReady();
      });
    } catch (ex) {
      _showErrorSnackBar();
    }
  }

  Future<void> _uploadFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

      if (result == null) return;

      List<File> files = result.paths.map((path) => File(path!)).toList();
      List<CustomFile> tempFiles = List.from(attachmentFiles);

      // Сначала собираем все файлы
      for (var file in files) {
        final bytes = await file.readAsBytes(); // Асинхронное чтение байтов

        final FileTypeInfo fileType = FileTypeInfo.getFileFormat(bytes);

        tempFiles.add(CustomFile(
          bytes: bytes,
          fileName: file.path,
          fileTypeInfo: fileType,
        ));
      }

      if (!getTotalSizeValid(tempFiles, widget.isPremium)) {
        if (!widget.isPremium) {
          _showPremiumDialog();
        }
        else {

        }
        _showInfoSnackBar();

        return;
      }

      // Если все проверки пройдены, обновляем состояние
      setState(() {
        attachmentFiles = tempFiles;
        isFormReady = getStatusFormReady();
      });
    } catch (ex) {
      _showErrorSnackBar();
    }
  }

  void _showPremiumDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => BlocProvider(
        create: (contextBuild) => PaymentBloc(
          paymentRepository: PaymentRepository(
            mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
          ),
          snackBarRepository: CustomInjector.find<SnackBarRepository>(),
        ),
        child: const FilePremiumDialog(),
      ),
    );
  }

  void _showInfoSnackBar() {
    showSnackBar(
      context: context,
      content: Text('Лимит отправки файлов на сегодня был исчерпан'),
      color: CwColors.customYellow,
      image: Assets.imageAlert,
      header: 'Warning',
      isYellow: true,
    );
  }

  void _showErrorSnackBar() {
    showSnackBar(
      context: context,
      content: Text('Неподдерживаемый формат'),
      color: CwColors.error,
      image: Assets.imageBlocked,
      header: 'Error',
      isYellow: false,
    );
  }
}
