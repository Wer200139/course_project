
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

class RestorePasswordRequestForm extends StatefulWidget {
  final VoidCallback voidCallback;
  final Function onReady;

  const RestorePasswordRequestForm({
    super.key,
    required this.voidCallback,
    required this.onReady,
  });

  @override
  State<RestorePasswordRequestForm> createState() =>
      _RestorePasswordRequestFormState();
}

class _RestorePasswordRequestFormState
    extends State<RestorePasswordRequestForm> {
  final _emailController = FormControl<String>(value: '', validators: [
    Validators.delegate(CustomValidators.required()),
    Validators.delegate(CustomValidators.emailValidator)
  ]);

  bool _isReady = false;

  @override
  void initState() {
    super.initState();
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
                'Сброс пароля',
                style: CwTextStyles.headerModal,
              ),
              const SizedBox(height: 12),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Для восстановления пароля мы отправим на ваш электронный адрес ссылку для сброса пароля',
                  style: CwTextStyles.textWidget.merge(
                    const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              CwTextField(
                controller: _emailController,
                labelText: 'Введите e-mail',
                maxLines: 1,
                hasSpaceForError: false,
                onChanged: (_) => setState(() {
                  _isReady = _getFormReady();
                }),
              ),
              const SizedBox(height: 22),
              CwElevatedButton(
                text: 'Сбросить пароль',
                onTap: _isReady ? () => {
                  widget.onReady(_emailController.value!),
                  BlocProvider.of<AuthBloc>(context).add(
                    AuthEvent.resetPasswordRequest(
                        email: _emailController.value!),
                  ),
                } : null,
                block: true,
                heightStyle: CwButtonHeightEnum.standard,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Я помню пароль',
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
                    padding: const EdgeInsets.only(left: 4, top: 2),
                    onTap: () => {widget.voidCallback()},
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
    );
  }

  bool _getFormReady() {
    bool isEmailReady = _emailController.valid;

    return isEmailReady;
  }
}
