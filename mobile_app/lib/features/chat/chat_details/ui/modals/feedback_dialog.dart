import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/features/chat/chat_details/bloc/chat_details_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class FeedbackDialog extends StatefulWidget {
  final int chatId;
  final bool isClosed;

  const FeedbackDialog({
    super.key,
    required this.chatId,
    required this.isClosed,
  });

  @override
  State<FeedbackDialog> createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  final _feedbackController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );

  bool _isFormReady = false;
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatDetailsBloc, ChatDetailsState>(
      listenWhen: (prev, cur) => cur.maybeMap(
        sendReview: (_) => true,
        successFinish: (_) => true,
        orElse: () => false,
      ),
      listener: (context, state) => state.maybeMap(
        sendReview: (state) => CustomNavigator.popUntil(
          context: context,
          predicate: ModalRoute.withName(RouteInfo.main.name),
        ),
        successFinish: (state) => CustomNavigator.popUntil(
          context: context,
          predicate: ModalRoute.withName(RouteInfo.main.name),
        ),
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
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Оцените эксперта',
                        style: CwTextStyles.headerModal,
                      ),
                    ),
                    const SizedBox(height: 24),
                    RatingStars(
                      valueLabelVisibility: false,
                      value: rating,
                      starSize: 40,
                      starSpacing: 8,
                      starColor: CwColors.primary,
                      onValueChanged: (v) {
                        setState(() {
                          rating = v;
                          _isFormReady = _getFormReadyStatus();
                        });
                      },
                    ),
                    const SizedBox(height: 22),
                    CwTextField(
                      controller: _feedbackController,
                      labelText: 'Комментарий к оценке',
                      hasSpaceForError: false,
                      topPadding: 0,
                      alignHintAndLabel: true,
                      minLines: 3,
                      maxLines: 5,
                      onChanged: (_) => setState(() {
                        _isFormReady = _getFormReadyStatus();
                      }),
                    ),
                    const SizedBox(height: 18),
                    CwElevatedButton(
                      text: !widget.isClosed ? 'Закрыть чат и отправить отзыв' : 'Подтвердить',
                      onTap: _isFormReady
                          ? () => BlocProvider.of<ChatDetailsBloc>(context).add(
                                widget.isClosed
                                    ? ChatDetailsEvent.sendReview(
                                        chatId: widget.chatId,
                                        text: _feedbackController.value!,
                                        rating: rating,
                                      )
                                    : ChatDetailsEvent.finishChattingRequested(
                                        chatId: widget.chatId,
                                        text: _feedbackController.value!,
                                        rating: rating,
                                      ),
                              )
                          : null,
                      block: true,
                      heightStyle: CwButtonHeightEnum.standard,
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

  bool _getFormReadyStatus() {
    final bool isFeedbackReady = _feedbackController.valid;
    final bool isRatingReady = rating > 0;

    return isFeedbackReady && isRatingReady;
  }
}
