import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/features/chat/chat_details/bloc/message/message_bloc.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/chats/models/attachment_model.dart';
import 'package:clokwise/features/repositories/chats/models/message_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/image_viewer.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:intl/intl.dart';

class MessageItem extends StatelessWidget {
  final int currentUserId;
  final MessageModel? message;
  final DateTime? availableUntil;
  final bool isAcceptedInfo;
  final bool isClosedInfo;
  final bool isDeletingInfo;

  const MessageItem({
    super.key,
    required this.currentUserId,
    required this.message,
    required this.availableUntil,
    this.isAcceptedInfo = false,
    this.isClosedInfo = false,
    this.isDeletingInfo = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isAcceptedInfo) {
      return const _SystemChatMessage(message: 'Общение подтверждено');
    }

    if (isDeletingInfo) {
      return const _SystemChatMessage(isDeletingInfo: true, message: 'Сообщения автоматически удаляются через 24 часа после прочтения');
    }

    if (isClosedInfo) {
      return const _SystemChatMessage(message: 'Общение закончено');
    }

    if (isClosedInfo == false && isAcceptedInfo == false) {
      return message?.fromUser.id == currentUserId
          ? BlocProvider(
              create: (context) => MessageBloc(
                chatRepository: ChatRepository(
                  mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                ),
                snackBarRepository: CustomInjector.find<SnackBarRepository>(),
              ),
              child: Builder(
                builder: (context) => Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _OwnerChatMessage(
                      message: message?.text ?? '',
                      timeMessage: DateFormat('HH:mm').format(message!.datetimeCreated.toLocal()),
                      isRead: message!.datetimeRead != null ? true : false,
                      files: message!.attachments,
                      availableUntil: message!.availableUntil,
                    )
                  ],
                ),
              ),
            )
          : BlocProvider(
              create: (context) => MessageBloc(
                chatRepository: ChatRepository(
                  mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
                ),
                snackBarRepository: CustomInjector.find<SnackBarRepository>(),
              ),
              child: Builder(
                builder: (context) => Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _UserChatMessage(
                      message: message?.text ?? '',
                      timeMessage: DateFormat('HH:mm').format(message!.datetimeCreated.toLocal()),
                      isRead: message!.datetimeRead != null ? true : false,
                      files: message!.attachments,
                      availableUntil: message!.availableUntil,
                    )
                  ],
                ),
              ),
            );
    }

    return const SizedBox();
  }
}

class _SystemChatMessage extends StatelessWidget {
  final String message;
  final bool isDeletingInfo;

  const _SystemChatMessage({
    required this.message,
    this.isDeletingInfo = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isDeletingInfo ? CwColors.bgGray : CwColors.subButton,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message,
              style: CwTextStyles.chatSystemMsg.withColor(isDeletingInfo ? CwColors.subText : CwColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserChatMessage extends StatelessWidget {
  final String message;
  final String timeMessage;
  final bool isRead;
  final List<AttachmentModel> files;
  final DateTime? availableUntil;

  const _UserChatMessage({
    required this.message,
    required this.timeMessage,
    required this.isRead,
    required this.files,
    required this.availableUntil,
  });

  @override
  Widget build(BuildContext context) {
    String timeRemaining = getTimeRemaining(availableUntil);

    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 6, bottom: 6, left: 20),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12, top: 12),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: CwColors.menuButtonHover),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (files.isNotEmpty) ...[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: (MediaQuery.of(context).size.width - 240),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: files.where((file) => file.type == FileType.image).length == 1 ? 1 : 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: files.where((file) => file.type == FileType.image).length,
                      itemBuilder: (context, index) {
                        final file = files.where((file) => file.type == FileType.image).elementAt(index);

                        return CwImage(
                          attachmentId: file.id,
                          images: files,
                          path: 'https://depl1.prod.sold.su/api/chats/get-attachment/${file.id}/',
                          isTappable: true,
                        );
                      },
                    ),
                  ),
                ],
                if (files.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: (MediaQuery.of(context).size.width - 240),
                    ),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 8);
                      },
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: files.where((file) => file.type == FileType.file).length,
                      itemBuilder: (context, index) {
                        final file = files.where((file) => file.type == FileType.file).elementAt(index);
                        return GestureDetector(
                          onTap: () => BlocProvider.of<MessageBloc>(context).add(
                            MessageEvent.downloadFileRequested(attachmentId: file.id),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CwColors.subButtonInverse,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    Assets.imageAttach,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width - 260,
                                ),
                                child: Text(
                                  file.filename,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                _MessageFieldTimeField(
                  message: message,
                  extraIndent: 180,
                  timeMessage: timeMessage,
                  isRead: isRead,
                ),
              ],
            ),
          ),
          if (timeRemaining.isNotEmpty) ...[
            Container(
              margin: const EdgeInsets.only(top: 6, bottom: 6, left: 12),
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 6, top: 6),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: CwColors.menuButtonHover),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.imageQuick),
                  const SizedBox(width: 8),
                  Text(
                    timeRemaining,
                    style: CwTextStyles.deactivatedButton,
                  ),
                ],
              ),
            )
          ],
        ],
      ),
    );
  }
}

class _OwnerChatMessage extends StatelessWidget {
  final String message;
  final String timeMessage;
  final bool isRead;
  final List<AttachmentModel> files;
  final DateTime? availableUntil;

  const _OwnerChatMessage({
    required this.message,
    required this.timeMessage,
    required this.isRead,
    required this.files,
    required this.availableUntil,
  });

  @override
  Widget build(BuildContext context) {
    String timeRemaining = getTimeRemaining(availableUntil);

    return Align(
      alignment: Alignment.center,
      child: Row(
        children: [
          if (timeRemaining.isNotEmpty) ...[
            Container(
              margin: const EdgeInsets.only(top: 6, bottom: 6, right: 12),
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 6, top: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: CwColors.subButton,
              ),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.imageQuick),
                  const SizedBox(width: 8),
                  Text(
                    timeRemaining,
                    style: CwTextStyles.deactivatedButton.withColor(CwColors.primary),
                  ),
                ],
              ),
            )
          ],
          Container(
            margin: const EdgeInsets.only(top: 6, bottom: 6, right: 20),
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 12, top: 12),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: CwColors.subButton),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Отображение изображений в виде плитки
                if (files.isNotEmpty) ...[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: (MediaQuery.of(context).size.width - 240),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: files.where((file) => file.type == FileType.image).length == 1 ? 1 : 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemCount: files.where((file) => file.type == FileType.image).length,
                      itemBuilder: (context, index) {
                        final file = files.where((file) => file.type == FileType.image).elementAt(index);

                        return CwImage(
                          attachmentId: file.id,
                          images: files,
                          path: 'https://depl1.prod.sold.su/api/chats/get-attachment/${file.id}/',
                          isTappable: true,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                if (files.isNotEmpty) ...[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: (MediaQuery.of(context).size.width - 240),
                    ),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 8);
                      },
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: files.where((file) => file.type == FileType.file).length,
                      itemBuilder: (context, index) {
                        final file = files.where((file) => file.type == FileType.file).elementAt(index);
                        return GestureDetector(
                          onTap: () => BlocProvider.of<MessageBloc>(context).add(
                            MessageEvent.downloadFileRequested(attachmentId: file.id),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: CwColors.subButtonInverse,
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    Assets.imageAttach,
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width - 260,
                                ),
                                child: Text(
                                  file.filename,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
                // Отображение сообщения
                _MessageFieldTimeField(
                  message: message,
                  extraIndent: 180,
                  timeMessage: timeMessage,
                  isRead: isRead,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageFieldTimeField extends StatelessWidget {
  final String message;
  final String timeMessage;
  final bool isRead;
  final int extraIndent;
  final String transparentTextForWordWrap;

  const _MessageFieldTimeField({
    required this.message,
    required this.extraIndent,
    required this.timeMessage,
    this.transparentTextForWordWrap = 'empty',
    required this.isRead,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width - extraIndent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 3, right: isRead ? 16 : 0),
                child: Text.rich(
                  TextSpan(
                    text: message,
                    style: CwTextStyles.chatTextMsg,
                    children: [
                      //
                      TextSpan(
                        text: transparentTextForWordWrap,
                        style: const TextStyle(color: Colors.transparent, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              if (isRead) ...[
                Positioned(
                  bottom: 0,
                  right: 16,
                  child: Text(timeMessage, style: CwTextStyles.chatTextTime),
                ),
                Positioned(
                  bottom: -2,
                  right: -2,
                  child: SvgPicture.asset(Assets.imageDoubleCheck),
                ),
              ] else ...[
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(timeMessage, style: CwTextStyles.chatTextTime),
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }
}

String getTimeRemaining(DateTime? availableUntil) {
  if (availableUntil == null) {
    return '';
  }

  Duration difference = availableUntil.difference(DateTime.now());

  if (difference.isNegative) {
    return '';
  }

  int hours = difference.inHours;
  int minutes = difference.inMinutes % 60;

  if (hours > 0) {
    return '$hours ч';
  } else if (minutes > 0) {
    return '$minutes м';
  }

  return '';
}
