import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/checkbox.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/switch.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class RegistrationForm extends StatefulWidget {
  final VoidCallback voidCallback;
  final VoidCallback confirmCallback;
  final Function onRegister;

  const RegistrationForm({
    super.key,
    required this.voidCallback,
    required this.onRegister,
    required this.confirmCallback,
  });

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _nameController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  final _surnameController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  final _emailController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
      Validators.delegate(CustomValidators.emailValidator),
    ],
  );
  final _passwordController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
      Validators.delegate(CustomValidators.passwordValidator()),
    ],
  );
  final _passwordConfirmController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
      Validators.delegate(CustomValidators.passwordValidator()),
    ],
  );
  final _phoneController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.phoneNumber)],
  );
  late bool isShowPassword = true;
  late bool isShowConfirmPassword = true;
  bool _isFormReady = false;
  bool _isAgree = false;
  bool _isKnowledge = false;
  MainPageStates _currentTab = MainPageStates.customer;

  void _changeTab(MainPageStates state) {
    setState(() {
      _currentTab = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Регистрация',
              style: CwTextStyles.headerModal,
            ),
            const SizedBox(height: 16),
            CwSwitch(changeTab: _changeTab, currentTab: _currentTab),
            const SizedBox(height: 12),
            CwTextField(
                controller: _nameController,
                labelText: 'Имя',
                prefixIcon:
                    SvgPicture.asset(fit: BoxFit.none, Assets.imageProfile),
                onChanged: (_) => setState(() {
                      _isFormReady = _getFormReadyStatus();
                    })),
            CwTextField(
                controller: _surnameController,
                labelText: 'Фамилия',
                prefixIcon:
                    SvgPicture.asset(fit: BoxFit.none, Assets.imageProfile),
                onChanged: (_) => setState(() {
                      _isFormReady = _getFormReadyStatus();
                    })),
            CwTextField(
                controller: _emailController,
                labelText: 'Введите e-mail',
                prefixIcon:
                    SvgPicture.asset(fit: BoxFit.none, Assets.imageMail),
                onChanged: (_) => setState(() {
                      _isFormReady = _getFormReadyStatus();
                    })),
            CwTextField(
                controller: _phoneController,
                labelText: 'Ваш номер телефона',
                keyboardType: TextInputType.number,
                inputFormatters: [
                  PhoneInputFormatter(
                    allowEndlessPhone: false,
                  )
                ],
                prefixIcon:
                    SvgPicture.asset(fit: BoxFit.none, Assets.imagePhone),
                onChanged: (_) => setState(() {
                      _isFormReady = _getFormReadyStatus();
                    })),
            CwTextField(
                controller: _passwordController,
                maxLines: 1,
                labelText: 'Введите пароль',
                obscureText: isShowPassword,
                suffixIcon: CwIconButton(
                  icon: SvgPicture.asset(Assets.imageEyeOff),
                  onTap: () {
                    setState(() => isShowPassword = !isShowPassword);
                  },
                ),
                onChanged: (_) => setState(() {
                      _isFormReady = _getFormReadyStatus();
                    })),
            CwTextField(
              controller: _passwordConfirmController,
              maxLines: 1,
              labelText: 'Повторите пароль',
              obscureText: isShowConfirmPassword,
              suffixIcon: CwIconButton(
                icon: SvgPicture.asset(Assets.imageEyeOff),
                onTap: () {
                  setState(
                      () => isShowConfirmPassword = !isShowConfirmPassword);
                },
              ),
              onChanged: (_) => setState(
                () {
                  _isFormReady = _getFormReadyStatus();
                },
              ),
            ),
            const SizedBox(height: 8),
            CwElevatedButton(
              text: 'Создать профиль',
              onTap: _isFormReady
                  ? () => {
                        widget.onRegister(_emailController.value),
                        widget.confirmCallback(),
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.signUpRequested(
                              email: _emailController.value!,
                              password: _passwordController.value!,
                              phoneNumber: _phoneController.value!.isNotEmpty ? getNoMaskPhoneNumber() : null,
                              firstName: _nameController.value!,
                              lastName: _surnameController.value!),
                        )
                      }
                  : null,
              block: true,
              heightStyle: CwButtonHeightEnum.standard,
            ),
            const SizedBox(height: 12),
            CwCheckbox(
              onChanged: (value) {
                setState(() {
                  _isAgree = value;
                  _isFormReady = _getFormReadyStatus();
                });
              },
              label: Wrap(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Согласен с',
                      style: CwTextStyles.checkBoxLabel,
                      children: [
                        WidgetSpan(
                          child: CwTextButton(
                            onTap: () => {
                              _isFormReady = _getFormReadyStatus(),
                            },
                            text: 'политикой конфиндециальности',
                            isSmall: true,
                            padding: const EdgeInsets.only(
                                left: 4, bottom: 1, right: 6),
                            textStyle: CwTextStyles.textButton.merge(
                              const TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: CwColors.primary,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        const TextSpan(text: 'компании'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            CwCheckbox(
              onChanged: (value) {
                setState(() {
                  _isKnowledge = value;
                  _isFormReady = _getFormReadyStatus();
                });
              },
              label: Wrap(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Ознакомлен с',
                          style: CwTextStyles.checkBoxLabel,
                          children: [
                            WidgetSpan(
                              child: CwTextButton(
                                onTap: () => {
                                  _isFormReady = _getFormReadyStatus(),
                                },
                                text: 'договором-офертой',
                                isSmall: true,
                                padding:
                                    const EdgeInsets.only(left: 6, bottom: 1),
                                textStyle: CwTextStyles.textButton.merge(
                                  const TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: CwColors.primary,
                                      fontSize: 13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Уже есть аккаунт?',
                  style: CwTextStyles.headerWidget
                      .merge(const TextStyle(fontSize: 14)),
                ),
                CwTextButton(
                  text: 'Войти',
                  isSmall: true,
                  textStyle: CwTextStyles.textButton.merge(
                    const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: CwColors.primary,
                        fontSize: 14),
                  ),
                  primaryColor: CwColors.primary,
                  onTap: () => {widget.voidCallback()},
                ),
              ],
            ),
            const SizedBox(height: 16),
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
    );
  }

  String getNoMaskPhoneNumber() {
    return _phoneController.value!.replaceAll(RegExp(r'[^\d+]'), '');
  }

  bool _getFormReadyStatus() {
    final bool isEmailReady = _emailController.valid;
    final bool isFirstName = _nameController.valid;
    final bool isLastName = _nameController.valid;
    // final bool isPhoneReady = _phoneController.value!.isNotEmpty;
    final bool isPasswordReady = _passwordController.valid &&
        _passwordController.value! == _passwordConfirmController.value;
    final bool isAgreeReady = _isAgree == true;
    final bool isKnowledgeReady = _isKnowledge == true;

    return isEmailReady &&
        isFirstName &&
        isLastName &&
        // isPhoneReady &&
        isPasswordReady &&
        isAgreeReady &&
        isKnowledgeReady;
  }
}
