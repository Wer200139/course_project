import 'dart:async';

import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ConfirmEmailForm extends StatefulWidget {
  final String email;

  const ConfirmEmailForm({super.key, required this.email});

  @override
  State<ConfirmEmailForm> createState() => _ConfirmEmailFormState();
}

class _ConfirmEmailFormState extends State<ConfirmEmailForm> {
  final _codeEmailController = FormControl<String>(value: '', validators: []);
  int _seconds = 5;
  bool _isTimerFinished = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _seconds--;

        if (_seconds == 0) {
          _isTimerFinished = true;
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.mapOrNull(
        success: (state) {
          CustomNavigator.maybePop(context: context);
          return null;
        },
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 16),
              const Text(
                'Подтвердить E-mail',
                style: CwTextStyles.headerModal,
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Мы отправили вам код на ${widget.email}',
                  style: CwTextStyles.textWidget.merge(
                    const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              CwTextField(
                controller: _codeEmailController,
                labelText: 'Код из письма',
                maxLines: 1,
                hasSpaceForError: false,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CwTextButton(
                    text:
                        'Отправить повторно ${_seconds > 0 ? _formatTime(_seconds) : ''}',
                    isSmall: true,
                    textStyle: CwTextStyles.textWidget
                        .merge(const TextStyle(fontSize: 14)),
                    primaryColor: CwColors.primary,
                    padding: const EdgeInsets.only(left: 4, top: 2),
                    onTap: _isTimerFinished
                        ? () => {
                              setState(() {
                                BlocProvider.of<AuthBloc>(context).add(
                                    AuthEvent.resendCodeRequested(
                                        email: widget.email));
                                _resetTimer();
                              })
                            }
                        : null,
                  ),
                ],
              ),
              const SizedBox(height: 22),
              CwElevatedButton(
                text: 'Продолжить',
                onTap: () => {
                  BlocProvider.of<AuthBloc>(context).add(
                    AuthEvent.confirmEmailRequested(
                        email: widget.email,
                        token: _codeEmailController.value!),
                  ),
                },
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
    );
  }

  void _resetTimer() {
    setState(() {
      _seconds = 61;
      _isTimerFinished = false;
    });

    _startTimer(); // Restart the timer
  }

  String _formatTime(int seconds) {
    final minutes = (seconds / 60).floor();

    final secondsRemaining = seconds % 60;

    return 'через: ${minutes.toString().padLeft(2, '0')}:${secondsRemaining.toString().padLeft(2, '0')}';
  }
}
