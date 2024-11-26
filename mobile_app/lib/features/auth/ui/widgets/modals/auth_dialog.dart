import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/router/routes.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/auth/bloc/auth_bloc.dart';
import 'package:clokwise/features/auth/ui/widgets/modals/authorization_form.dart';
import 'package:clokwise/features/auth/ui/widgets/modals/confirm_email_form.dart';
import 'package:clokwise/features/auth/ui/widgets/modals/registration_form.dart';
import 'package:clokwise/features/auth/ui/widgets/modals/reset_password.dart';
import 'package:clokwise/features/auth/ui/widgets/modals/reset_password_request.dart';
import 'package:clokwise/features/snackbar/ui/show_snack_bar.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthDialog extends StatefulWidget {
  const AuthDialog({super.key});

  @override
  State<AuthDialog> createState() => _AuthDialogState();
}

class _AuthDialogState extends State<AuthDialog> {
  bool _isRegistrationForm = false;
  bool _isRestorePassword = false;
  bool _isConfirmEmail = false;
  late String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Colors.white,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BlocConsumer<AuthBloc, AuthState>(
            listenWhen: (prev, cur) => cur.maybeMap(
              success: (_) => true,
              successConfirm: (_) => true,
              successLogin: (_) => true,
              error: (_) => true,
              orElse: () => false,
            ),
            listener: (context, state) => state.mapOrNull(
              error: (state) => showSnackBar(
                  context: context,
                  content: const Text('Ошибка'),
                  color: CwColors.customBrown,
                  image: Assets.imageBlocked,
                  header: 'Info',
                  isYellow: false),
              success: (user) => CustomNavigator.goNamed(
                RouteInfo.home.name,
                params: RouteInfo.home.getParams(
                  extraParams: {
                    'index': '1',
                  },
                ),
              ),
              successLogin: (user) => setState(() {
                CustomNavigator.goNamed(
                  RouteInfo.home.name,
                  params: RouteInfo.home.getParams(
                    extraParams: {
                      'index': '1',
                    },
                  ),
                );
              }),
              successConfirm: (user) => CustomNavigator.goNamed(
                RouteInfo.home.name,
                params: RouteInfo.home.getParams(
                  extraParams: {
                    'index': '1',
                  },
                ),
              ),
            ),
            buildWhen: (context, state) => state.maybeMap(
              error: (_) => false,
              orElse: () => true,
            ),
            builder: (context, state) => state.maybeMap(
              loading: (_) => const ModalLoadingIndicator(),
              initial: (_) => SingleChildScrollView(
                child: _isRestorePassword
                    ? RestorePasswordRequestForm(
                        voidCallback: () => setState(() {
                              _isRestorePassword = !_isRestorePassword;
                            }),
                        onReady: (value) => {
                              _isRestorePassword = !_isRestorePassword,
                              email = value,
                            })
                    : _isRegistrationForm
                        ? RegistrationForm(
                            confirmCallback: () => setState(() {
                              _isConfirmEmail = !_isConfirmEmail;
                            }),
                            voidCallback: () => setState(() {
                              _isRegistrationForm = !_isRegistrationForm;
                            }),
                            onRegister: (String value) => email = value,
                          )
                        : AuthorizationForm(
                            voidCallback: () => setState(() {
                              _isRegistrationForm = !_isRegistrationForm;
                            }),
                            callbackPassword: () => setState(() {
                              _isRestorePassword = !_isRestorePassword;
                            }),
                          ),
              ),
              successLogin: (_) => const SizedBox(
                child: Text('залогинилися'),
              ),
              successSignUp: (state) => SingleChildScrollView(
                child: ConfirmEmailForm(email: state.user.user.email),
              ),
              confirmEmail: (state) => SingleChildScrollView(
                child: ConfirmEmailForm(email: state.email),
              ),
              resetPassword: (state) => ResetPasswordForm(
                email: email,
                onReady: () => _isRestorePassword = false,
              ),
              orElse: () => SingleChildScrollView(
                child: _isRestorePassword
                    ? RestorePasswordRequestForm(
                        voidCallback: () => setState(() {
                          _isRestorePassword = !_isRestorePassword;
                        }),
                        onReady: (value) => {
                          _isRestorePassword = !_isRestorePassword,
                          email = value
                        },
                      )
                    : _isRegistrationForm
                        ? RegistrationForm(
                            confirmCallback: () => setState(() {
                              _isConfirmEmail = !_isConfirmEmail;
                            }),
                            voidCallback: () => setState(() {
                              _isRegistrationForm = !_isRegistrationForm;
                            }),
                            onRegister: (String value) => email = value,
                          )
                        : AuthorizationForm(
                            voidCallback: () => setState(() {
                              _isRegistrationForm = !_isRegistrationForm;
                            }),
                            callbackPassword: () => setState(() {
                              _isRestorePassword = !_isRestorePassword;
                            }),
                          ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _switchToRegistrationForm() {
    setState(() {
      _isRegistrationForm = true;
    });
  }
}
