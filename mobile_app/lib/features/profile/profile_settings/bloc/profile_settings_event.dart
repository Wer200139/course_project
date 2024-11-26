part of 'profile_settings_bloc.dart';

@freezed
class ProfileSettingsEvent with _$ProfileSettingsEvent {
  const factory ProfileSettingsEvent.fetchExpertSettingsRequested() =
      _FetchExpertSettingsRequestedEvent;

  const factory ProfileSettingsEvent.fetchCustomerSettingsRequested() =
      _FetchCustomerSettingsRequestedEvent;

  const factory ProfileSettingsEvent.editExpertRequested({
    required UpdateProfileRequest request,
    String? curPassword,
    String? newPassword,
  }) = _EditExpertRequested;

  const factory ProfileSettingsEvent.editCustomerRequested({
    required UpdateProfileRequest request,
    String? curPassword,
    String? newPassword,
  }) = _EditCustomerRequested;

  const factory ProfileSettingsEvent.changePasswordRequested({
    required String curPassword,
    required String newPassword,
  }) = _ChangePasswordRequested;

  const factory ProfileSettingsEvent.updateActivityRequested({
    required String website,
    required String description,
  }) = _UpdateActivityRequested;

  const factory ProfileSettingsEvent.updateCompanyRequested({
    required String website,
    required String description,
    required int tin,
    required String name,
  }) = _UpdateCompanyRequested;

  const factory ProfileSettingsEvent.getIndustriesRequested() = _GetIndustriesRequested;

  const factory ProfileSettingsEvent.getSubindustriesRequested({
    required int id
  }) = _GetSubindustriesRequested;

  const factory ProfileSettingsEvent.getFunctionsRequested({required int id}) =
      _GetFunctionsRequested;

  const factory ProfileSettingsEvent.getSubfunctionRequested({
    required int id
  }) = _GetSubfunctionsRequested;

  const factory ProfileSettingsEvent.updateEducationRequested({
    required List<EducationModel> educations,
  }) = _UpdateEducationRequested;

  const factory ProfileSettingsEvent.updateExperienceRequested({
    required List<ExperienceRequest> experiences,
  }) = _UpdateExperienceRequested;

  const factory ProfileSettingsEvent.setAvatar({
    required int avatar,
  }) = _SetAvatarRequested;

  const factory ProfileSettingsEvent.getCode() = _GetCodeRequested;
}
