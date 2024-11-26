import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/modals/dialog_code.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/searcher/activity_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/avatar_settings_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/searcher/company_widget.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/searcher/switch_profile.dart';
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

class ProfileSettingsSearcherBody extends StatefulWidget {
  const ProfileSettingsSearcherBody({super.key});

  @override
  State<ProfileSettingsSearcherBody> createState() =>
      _ProfileSettingsSearcherBodyState();
}

class _ProfileSettingsSearcherBodyState
    extends State<ProfileSettingsSearcherBody> {
  ProfileStates _currentTab = ProfileStates.phys;

  void _changeTab(ProfileStates state) {
    setState(() {
      _currentTab = state;
    });
  }

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
      Validators.delegate(CustomValidators.emailValidator),
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
    //validators: ValidatorSets.password.validators,
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
  String code = '';
  bool isShowCurrentPassword = true;
  bool isShowNewPassword = true;
  bool isShowConfirmPassword = true;

  bool isChangePassword = false;
  bool changeCommonInfo = false;
  bool isPasswordWrong = false;

  @override
  void initState() {
    BlocProvider.of<ProfileSettingsBloc>(context)
        .add(const ProfileSettingsEvent.fetchCustomerSettingsRequested());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void updateData(String value) {
      BlocProvider.of<ProfileSettingsBloc>(context).add(
        ProfileSettingsEvent.editCustomerRequested(
            request: UpdateProfileRequest(
                firstName: _nameController.value!,
                lastName: _surnameController.value!,
                phoneNumber: _phoneController.value!,
                email: _emailController.value!,
                confirmationCode: value),
            curPassword:
                isChangePassword ? _currentPasswordController.value! : '',
            newPassword: isChangePassword ? _newPasswordController.value! : ''),
      );
    }

    void getCode() {
      BlocProvider.of<ProfileSettingsBloc>(context)
          .add(const ProfileSettingsEvent.getCode());
    }

    return BlocConsumer<ProfileSettingsBloc, ProfileSettingsState>(
      listenWhen: (prev, cur) => cur.maybeMap(
        succesCustomer: (_) => true,
        successExpert: (_) => false,
        succesChangePassword: (_) => true,
        succesSubIndustries: (_) => false,
        succesFunction: (_) => false,
        succesSubFunction: (_) => false,
        orElse: () => false,
      ),
      listener: (context, state) =>
          state.mapOrNull(succesChangePassword: (state) {
        _currentPasswordController.value = '';
        _newPasswordController.value = '';
        _newConfirmPasswordController.value = '';
        return null;
      }, succesCustomer: (state) {
        setState(() {
          _nameController.value = state.company.firstName;
          _surnameController.value = state.company.lastName;
          _emailController.value = state.company.email;
          _phoneController.value = state.company.phoneNumber;
        });
        return null;
      }),
      buildWhen: (context, state) => state.maybeMap(
          succesIndustries: (_) => false,
          succesSubIndustries: (_) => false,
          succesFunction: (_) => false,
          succesSubFunction: (_) => false,
          succesChangePassword: (_) => false,
          successExpert: (_) => false,
          orElse: () => true),
      builder: (context, state) => state.maybeMap(
        loading: (_) => const PageLoadingIndicator(),
        succesCustomer: (state) => Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: CwColors.customWhite,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvatarSettingsWidget(
                    image: state.company.avatar?.image,
                    fullName:
                        '${state.company.firstName} ${state.company.lastName}',
                    rating: state.company.rating,
                  ),
                  const SizedBox(height: 24),
                  SwitchProfile(changeTab: _changeTab, currentTab: _currentTab),
                  const SizedBox(height: 18),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text('Основная информация',
                        style: CwTextStyles.headerProfile),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CwTextField(
                            controller: _nameController,
                            maxLines: 1,
                            labelText: 'Имя',
                            onChanged: (_) => setState(() {
                                  changeCommonInfo = _getFormReadyStatus();
                                }),
                            prefixIcon: SvgPicture.asset(
                                fit: BoxFit.none, Assets.imageProfile)),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CwTextField(
                          controller: _surnameController,
                          maxLines: 1,
                          labelText: 'Фамилия',
                          prefixIcon: SvgPicture.asset(
                              fit: BoxFit.none, Assets.imageProfile),
                          onChanged: (_) => setState(() {
                            changeCommonInfo = _getFormReadyStatus();
                          }),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CwTextField(
                          controller: _phoneController,
                          maxLines: 1,
                          labelText: 'Ваш номер телефона',
                          inputFormatters: [PhoneInputFormatter()],
                          keyboardType: TextInputType.number,
                          onChanged: (_) => setState(() {
                            changeCommonInfo = _getFormReadyStatus();
                          }),
                          prefixIcon: SvgPicture.asset(
                              fit: BoxFit.none, Assets.imagePhone),
                          topPadding: 0,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CwTextField(
                          controller: _emailController,
                          maxLines: 1,
                          labelText: 'Ваш e-mail',
                          onChanged: (_) => setState(() {
                            changeCommonInfo = _getFormReadyStatus();
                          }),
                          prefixIcon: SvgPicture.asset(
                              fit: BoxFit.none, Assets.imageMail),
                          topPadding: 0,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Text('Изменить пароль',
                        style: CwTextStyles.headerProfile),
                  ),
                  const SizedBox(height: 4),
                  CwTextField(
                    controller: _currentPasswordController,
                    labelText: 'Ваш текущий пароль',
                    maxLines: 1,
                    obscureText: isShowCurrentPassword,
                    onChanged: (_) => setState(() {
                      isChangePassword = _getPasswordReady();
                      changeCommonInfo = _getFormReadyStatus();
                    }),
                    hasSpaceForError: false,
                    suffixIcon: CwIconButton(
                      icon: SvgPicture.asset(Assets.imageEyeOff),
                      onTap: () {
                        setState(() =>
                            isShowCurrentPassword = !isShowCurrentPassword);
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CwTextField(
                          controller: _newPasswordController,
                          labelText: 'Ваш новый пароль',
                          maxLines: 1,
                          obscureText: isShowNewPassword,
                          hasSpaceForError: false,
                          onChanged: (_) => setState(() {
                            isChangePassword = _getPasswordReady();
                            changeCommonInfo = _getFormReadyStatus();
                          }),
                          suffixIcon: CwIconButton(
                            icon: SvgPicture.asset(Assets.imageEyeOff),
                            onTap: () {
                              setState(
                                  () => isShowNewPassword = !isShowNewPassword);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CwTextField(
                          controller: _newConfirmPasswordController,
                          maxLines: 1,
                          labelText: 'Повторите новый пароль',
                          obscureText: isShowConfirmPassword,
                          hasSpaceForError: false,
                          onChanged: (_) => setState(() {
                            isChangePassword = _getPasswordReady();
                            changeCommonInfo = _getFormReadyStatus();
                          }),
                          suffixIcon: CwIconButton(
                            icon: SvgPicture.asset(Assets.imageEyeOff),
                            onTap: () {
                              setState(() => isShowConfirmPassword =
                                  !isShowConfirmPassword);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (isPasswordWrong) ...[
                    const SizedBox(height: 6),
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
                    onTap: (changeCommonInfo && isChangePassword) ||
                            changeCommonInfo == true
                        ? () {
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                getCode();
                                return DialogCode(
                                  code: (value) => updateData(value),
                                );
                              },
                            );
                          }
                        : null,
                    block: true,
                    heightStyle: CwButtonHeightEnum.standard,
                  ),
                  const SizedBox(height: 4),
                  CwElevatedButton(
                    text: 'Удалить свой профиль',
                    onTap: () => {},
                    block: true,
                    style: ElevatedButtonStyle.delete,
                    heightStyle: CwButtonHeightEnum.standard,
                    leading: MyFlutterApp.trash,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            _currentTab.isLegal
                ? CompanyWidget(
                    organizationName: state.company.companyName ?? '',
                    tin: '${state.company.companyInn}',
                    site: state.company.companyWebsite ?? '',
                    description: state.company.companyDescription ?? '',
                  )
                : ActivityWidget(
                    website: state.customer.personWebsite ?? '',
                    description: state.customer.personActivityDescription ?? '',
                  ),
          ],
        ),
        orElse: () => const SizedBox(),
      ),
    );
  }

  bool _getFormReadyStatus() {
    final bool isFirstNameReady = _nameController.valid;
    final bool isLastNameReady = _surnameController.valid;
    final bool isEmailReady = _emailController.valid;
    final bool isPhoneNumberReady = _phoneController.valid;

    final bool isLoginReady = isFirstNameReady &&
        isLastNameReady &&
        isEmailReady &&
        isPhoneNumberReady;

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
