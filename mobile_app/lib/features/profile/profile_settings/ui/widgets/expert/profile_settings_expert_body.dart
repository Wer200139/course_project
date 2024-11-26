import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/avatar_settings_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/education_list_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/experience_list_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/modals/dialog_code.dart';
import 'package:clokwise/features/repositories/profile/requests/update_profile_request.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/my_flutter_app_icons.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/formatters/phone_input_formatter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ProfileSettingsExpertBody extends StatefulWidget {
  const ProfileSettingsExpertBody({super.key});

  @override
  State<ProfileSettingsExpertBody> createState() => _ProfileSettingsExpertBodyState();
}

class _ProfileSettingsExpertBodyState extends State<ProfileSettingsExpertBody> {
  final _nameController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _surnameController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _emailController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _phoneController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _currentPasswordController = FormControl<String>(
    value: '',
    validators: [],
  );
  final _newPasswordController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.passwordNoMessageValidator()),
    ],
  );
  final _newConfirmPasswordController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.passwordNoMessageValidator()),
    ],
  );

  bool isShowCurrentPassword = true;
  bool isShowNewPassword = true;
  bool isShowConfirmPassword = true;
  bool isPasswordReady = false;
  bool isPasswordWrong = false;

  bool changeCommonInfo = false;
  final _key = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProfileSettingsBloc>(context).add(const ProfileSettingsEvent.fetchExpertSettingsRequested());
  }

  @override
  Widget build(BuildContext context) {
    void updateData(String value) {
      BlocProvider.of<ProfileSettingsBloc>(context).add(
        ProfileSettingsEvent.editExpertRequested(
            request: UpdateProfileRequest(
                firstName: _nameController.value!,
                lastName: _surnameController.value!,
                phoneNumber: _phoneController.value!,
                email: _emailController.value!,
                confirmationCode: value),
            curPassword: isPasswordReady ? _currentPasswordController.value! : '',
            newPassword: isPasswordReady ? _newPasswordController.value! : ''),
      );
    }

    void getCode() {
      BlocProvider.of<ProfileSettingsBloc>(context).add(const ProfileSettingsEvent.getCode());
    }

    return BlocConsumer<ProfileSettingsBloc, ProfileSettingsState>(
      key: _key,
      listenWhen: (prev, cur) => cur.maybeMap(
        succesChangePassword: (_) => true,
        successExpert: (_) => true,
        orElse: () => false,
      ),
      listener: (context, state) {
        state.mapOrNull(succesChangePassword: (state) {
          _currentPasswordController.value = '';
          _newPasswordController.value = '';
          _newConfirmPasswordController.value = '';
          return null;
        }, successExpert: (state) {
          setState(() {
            _nameController.value = state.expert.firstName;
            _surnameController.value = state.expert.lastName;
            _emailController.value = state.expert.email;
            _phoneController.value = state.expert.phoneNumber;
          });
        });
      },
      buildWhen: (context, state) => state.maybeMap(
          succesIndustries: (_) => false,
          succesSubIndustries: (_) => false,
          succesFunction: (_) => false,
          succesSubFunction: (_) => false,
          succesChangePassword: (_) => false,
          orElse: () => true),
      builder: (context, state) => state.maybeMap(
        loading: (_) => const PageLoadingIndicator(),
        successExpert: (state) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CwColors.customWhite,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarSettingsWidget(
                    image: state.expert.avatar?.image,
                    fullName: '${state.expert.firstName} ${state.expert.lastName}',
                    rating: state.expert.rating,
                  ),
                  const SizedBox(height: 18),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text('Основная информация', style: CwTextStyles.headerProfile),
                  ),
                  const SizedBox(height: 16),
                  CwTextField(
                      controller: _nameController,
                      maxLines: 1,
                      labelText: 'Имя',
                      onChanged: (control) {
                        setState(() {
                          changeCommonInfo = _getFormReadyStatus();
                        });
                      },
                      prefixIcon: SvgPicture.asset(fit: BoxFit.none, Assets.imageProfile)),
                  const SizedBox(width: 12),
                  CwTextField(
                    controller: _surnameController,
                    maxLines: 1,
                    labelText: 'Фамилия',
                    prefixIcon: SvgPicture.asset(fit: BoxFit.none, Assets.imageProfile),
                    onChanged: (_) => setState(() {
                      changeCommonInfo = _getFormReadyStatus();
                    }),
                  ),
                  CwTextField(
                    controller: _phoneController,
                    maxLines: 1,
                    labelText: 'Ваш номер телефона',
                    inputFormatters: [PhoneInputFormatter()],
                    keyboardType: TextInputType.phone,
                    onChanged: (control) {
                      setState(() {
                        changeCommonInfo = _getFormReadyStatus();
                      });
                    },
                    prefixIcon: SvgPicture.asset(fit: BoxFit.none, Assets.imagePhone),
                    topPadding: 0,
                  ),
                  const SizedBox(width: 12),
                  CwTextField(
                    controller: _emailController,
                    maxLines: 1,
                    labelText: 'Ваш e-mail',
                    onChanged: (control) {
                      setState(() {
                        changeCommonInfo = _getFormReadyStatus();
                      });
                    },
                    prefixIcon: SvgPicture.asset(fit: BoxFit.none, Assets.imageMail),
                    topPadding: 0,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text('Изменить пароль', style: CwTextStyles.headerProfile),
                  ),
                  const SizedBox(height: 16),
                  CwTextField(
                    controller: _currentPasswordController,
                    labelText: 'Ваш текущий пароль',
                    maxLines: 1,
                    onChanged: (control) {
                      setState(() {
                        changeCommonInfo = _getFormReadyStatus();
                        isPasswordReady = _getPasswordReady();
                      });
                    },
                    hasSpaceForError: false,
                    obscureText: isShowCurrentPassword,
                    suffixIcon: CwIconButton(
                      icon: SvgPicture.asset(Assets.imageEyeOff),
                      onTap: () {
                        setState(() => isShowCurrentPassword = !isShowCurrentPassword);
                      },
                    ),
                  ),
                  CwTextField(
                    controller: _newPasswordController,
                    labelText: 'Ваш новый пароль',
                    maxLines: 1,
                    obscureText: isShowNewPassword,
                    hasSpaceForError: false,
                    onChanged: (control) {
                      setState(() {
                        changeCommonInfo = _getFormReadyStatus();
                        isPasswordReady = _getPasswordReady();
                      });
                    },
                    suffixIcon: CwIconButton(
                      icon: SvgPicture.asset(Assets.imageEyeOff),
                      onTap: () {
                        setState(() => isShowNewPassword = !isShowNewPassword);
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  CwTextField(
                    controller: _newConfirmPasswordController,
                    maxLines: 1,
                    labelText: 'Повторите новый пароль',
                    obscureText: isShowConfirmPassword,
                    hasSpaceForError: false,
                    onChanged: (control) {
                      setState(() {
                        changeCommonInfo = _getFormReadyStatus();
                        isPasswordReady = _getPasswordReady();
                      });
                    },
                    suffixIcon: CwIconButton(
                      icon: SvgPicture.asset(Assets.imageEyeOff),
                      onTap: () {
                        setState(() => isShowConfirmPassword = !isShowConfirmPassword);
                      },
                    ),
                  ),
                  if (isPasswordWrong) ...[
                    const SizedBox(height: 4),
                    const Wrap(
                      children: [
                        Text(
                          'Пароль должен быть длиннее 6 символов',
                          overflow: null,
                          style: CwTextStyles.errorTextField,
                        )
                      ],
                    ),
                    const SizedBox(height: 6),
                  ],
                  const SizedBox(height: 12),
                  CwElevatedButton(
                    text: 'Сохранить изменения',
                    block: true,
                    heightStyle: CwButtonHeightEnum.standard,
                    onTap: (changeCommonInfo && isPasswordReady) || changeCommonInfo == true
                        ? () {
                            if (changeCommonInfo == true) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  getCode();
                                  return DialogCode(code: (value) => updateData(value));
                                },
                              );
                            }
                          }
                        : null,
                  ),
                  const SizedBox(height: 4),
                  CwElevatedButton(
                    text: 'Удалить свой профиль',
                    block: true,
                    style: ElevatedButtonStyle.delete,
                    heightStyle: CwButtonHeightEnum.standard,
                    leading: MyFlutterApp.trash,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            EducationListWidget(
              degrees: state.educationsDegrees ?? [],
              levels: state.educationsLevels ?? [],
              educations: state.expert.education,
            ),
            const SizedBox(height: 12),
            ExperienceListWidget(
              experiences: state.expert.experience,
              isUpdated: state.isUpdated,
            )
          ],
        ),
        orElse: () => const SizedBox(
          child: Text('Ошибка'),
        ),
      ),
    );
  }

  bool _getFormReadyStatus() {
    final bool isFirstNameReady = _nameController.valid;
    final bool isLastNameReady = _surnameController.valid;
    final bool isEmailReady = _emailController.valid;
    final bool isPhoneNumberReady = _phoneController.valid;

    final bool isLoginReady = (isFirstNameReady && isLastNameReady && isEmailReady && isPhoneNumberReady);

    return isLoginReady;
  }

  bool _getPasswordReady() {
    final bool isPasswordReady = _currentPasswordController.valid;
    final bool isNewPasswordReady = _newPasswordController.valid &&
        _newConfirmPasswordController.valid &&
        _newConfirmPasswordController.value == _newPasswordController.value;

    final bool isLoginReady = isPasswordReady && isNewPasswordReady;
    isPasswordWrong = !isNewPasswordReady;

    return isLoginReady;
  }
}
