import 'dart:async';

import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ResetPasswordForm extends StatefulWidget {
  final String email;
  final VoidCallback onReady;

  const ResetPasswordForm(
      {super.key, required this.email, required this.onReady});

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _codeEmailController = FormControl<String>(value: '', validators: []);
  int _seconds = 130;
  bool _isTimerFinished = false;

  final _newPasswordController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
      Validators.delegate(CustomValidators.passwordValidator()),
    ],
  );
  final _newConfirmPasswordController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
      Validators.delegate(CustomValidators.passwordValidator()),
    ],
  );

  bool _isReady = false;
  bool _isShowPassword = true;
  bool _isShowPasswordConfirm = true;

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
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),
                const Text(
                  'Сбросить пароль',
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
                  obscureText: true,
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
                                      AuthEvent.sendNewPasswordRequest(
                                          email: widget.email,
                                          token: _codeEmailController.value!,
                                          password:
                                              _newConfirmPasswordController
                                                  .value!));
                                  _resetTimer();
                                })
                              }
                          : null,
                    ),
                  ],
                ),
                CwTextField(
                  controller: _newPasswordController,
                  obscureText: _isShowPassword,
                  suffixIcon: CwIconButton(
                    icon: SvgPicture.asset(Assets.imageEyeOff),
                    onTap: () {
                      setState(() => _isShowPassword = !_isShowPassword);
                    },
                  ),
                  labelText: 'Введите новый пароль',
                  maxLines: 1,
                  hasSpaceForError: false,
                  onChanged: (_) => setState(() {
                    _isReady = _getFormReadyStatus();
                  }),
                ),
                const SizedBox(height: 4),
                CwTextField(
                  controller: _newConfirmPasswordController,
                  labelText: 'Повторите новый пароль',
                  obscureText: _isShowPasswordConfirm,
                  suffixIcon: CwIconButton(
                    icon: SvgPicture.asset(Assets.imageEyeOff),
                    onTap: () {
                      setState(() =>
                          _isShowPasswordConfirm = !_isShowPasswordConfirm);
                    },
                  ),
                  maxLines: 1,
                  hasSpaceForError: false,
                  onChanged: (_) => setState(() {
                    _isReady = _getFormReadyStatus();
                  }),
                ),
                const SizedBox(height: 22),
                CwElevatedButton(
                  text: 'Продолжить',
                  onTap: () => _isReady
                      ? {
                          BlocProvider.of<AuthBloc>(context).add(
                            AuthEvent.sendNewPasswordRequest(
                                token: _codeEmailController.value!,
                                email: widget.email,
                                password: _newConfirmPasswordController.value!),
                          ),
                          widget.onReady(),
                        }
                      : null,
                  block: true,
                  heightStyle: CwButtonHeightEnum.standard,
                ),
                const SizedBox(height: 20),
              ],
            ),
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

  bool _getFormReadyStatus() {
    bool isCodeReady = _codeEmailController.valid;
    bool isPasswordReady = _newPasswordController.valid &&
        _newConfirmPasswordController.valid &&
        _newPasswordController.value! == _newConfirmPasswordController.value!;

    return isCodeReady && isPasswordReady;
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
