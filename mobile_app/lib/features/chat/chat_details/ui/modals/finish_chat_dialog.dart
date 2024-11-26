import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FinishChatDialog extends StatelessWidget {
  final int chatId;
  final VoidCallback finishChat;

  const FinishChatDialog({super.key, required this.chatId, required this.finishChat});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatDetailsBloc, ChatDetailsState>(
      listenWhen: (prev, cur) => cur.maybeMap(
        orElse: () => false,
      ),
      listener: (context, state) => state.maybeMap(
        orElse: () => {},
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: Colors.white,
          insetPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 28),
                    const Text(
                      'Завершение диалога',
                      style: CwTextStyles.headerModal,
                    ),
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Данный диалог будет завершен.',
                            style: CwTextStyles.textWidget.merge(
                              const TextStyle(fontSize: 14),
                            ),
                          ),
                          Text(
                            'Вы уверены?',
                            style: CwTextStyles.textWidget.merge(
                              const TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: CwElevatedButton(
                            text: 'Завершить',
                            onTap: finishChat,
                            block: true,
                            heightStyle: CwButtonHeightEnum.standard,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Flexible(
                          child: CwElevatedButton(
                            text: 'Отмена',
                            onTap: () => CustomNavigator.pop(),
                            block: true,
                            style: ElevatedButtonStyle.secondary,
                            heightStyle: CwButtonHeightEnum.standard,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 12,
                  child: CwIconButton(
                      width: 18,
                      height: 18,
                      icon: SvgPicture.asset(Assets.imageCrossClose),
                      onTap: () => {
                            CustomNavigator.maybePop(context: context),
                          }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
