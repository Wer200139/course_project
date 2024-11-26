import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/generated/assets.dart';
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
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AuthorizationForm extends StatefulWidget {
  final VoidCallback voidCallback;
  final VoidCallback callbackPassword;

  const AuthorizationForm(
      {super.key, required this.voidCallback, required this.callbackPassword});

  @override
  State<AuthorizationForm> createState() => _AuthorizationFormState();
}

class _AuthorizationFormState extends State<AuthorizationForm> {
  final _emailController = FormControl<String>(value: '', validators: [
    Validators.delegate(CustomValidators.required()),
    Validators.delegate(CustomValidators.emailValidator)
  ]);
  final _passwordController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  late bool isShowPassword = true;
  bool isExpert = false;
  MainPageStates _currentTab = MainPageStates.customer;

  void _changeTab(MainPageStates state) {
    setState(() {
      _currentTab = state;
      isExpert = state.isExpert ? true : false;
    });
  }

  bool _isReadyForm = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Вход',
              style: CwTextStyles.headerModal,
            ),
            const SizedBox(height: 16),
            CwSwitch(changeTab: _changeTab, currentTab: _currentTab),
            const SizedBox(height: 12),
            CwTextField(
              controller: _emailController,
              labelText: 'Введите e-mail',
              prefixIcon: SvgPicture.asset(fit: BoxFit.none, Assets.imageMail),
              onChanged: (_) => setState(() {
                _isReadyForm = _getFormReadyStatus();
              }),
            ),
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
                _isReadyForm = _getFormReadyStatus();
              }),
            ),
            const SizedBox(height: 8),
            CwElevatedButton(
              text: 'Войти',
              onTap: _isReadyForm
                  ? () => {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.loginRequested(
                            email: _emailController.value!,
                            password: _passwordController.value!,
                            isExpert: isExpert,
                          ),
                        )
                      }
                  : null,
              block: true,
              heightStyle: CwButtonHeightEnum.standard,
            ),
            const SizedBox(height: 2),
            CwElevatedButton(
              text: 'Зарегистрироваться',
              onTap: () => widget.voidCallback(),
              block: true,
              heightStyle: CwButtonHeightEnum.standard,
              style: ElevatedButtonStyle.secondary,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Забыли пароль?',
                  style: CwTextStyles.headerWidget
                      .merge(const TextStyle(fontSize: 14)),
                ),
                CwTextButton(
                  text: 'Восстановить пароль',
                  isSmall: true,
                  textStyle: CwTextStyles.textButton.merge(
                    const TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: CwColors.primary,
                        fontSize: 14),
                  ),
                  primaryColor: CwColors.primary,
                  padding: const EdgeInsets.only(left: 4, top: 2),
                  onTap: () => {widget.callbackPassword()},
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
    );
  }

  bool _getFormReadyStatus() {
    bool isEmailReady = _emailController.valid;
    bool isPasswordReady = _passwordController.valid;

    return isEmailReady && isPasswordReady;
  }
}
