part of 'profile_settings_bloc.dart';

@freezed
class ProfileSettingsState with _$ProfileSettingsState {
  const factory ProfileSettingsState.initial() = _InitialState;

  const factory ProfileSettingsState.loading() = _LoadingState;

  const factory ProfileSettingsState.succesCustomer({
    required ProfileCompanyModel company,
    required ProfileCustomerModel customer,
  }) = _SuccesCustomerState;

  const factory ProfileSettingsState.succesIndustries({
    required List<ClassificatorModel> industries,
  }) = _SuccesIndustriesState;

  const factory ProfileSettingsState.succesSubIndustries({
    required List<ClassificatorModel> subindustries,
  }) = _SuccesSubIndustriesState;

  const factory ProfileSettingsState.succesFunction({
    required List<ClassificatorModel> functions,
  }) = _SuccesFunctionState;

  const factory ProfileSettingsState.succesChangePassword() = _SuccessChangePasswordState;

  const factory ProfileSettingsState.succesSubFunction({
    required List<ClassificatorModel> subfunctions,
  }) = _SuccesSubFunctionState;

  const factory ProfileSettingsState.successExpert({
    required ProfileExpertModel expert,
    List<EducationModel>? educations,
    List<EducationDegreeModel>? educationsDegrees,
    List<EducationLevelModel>? educationsLevels,
    List<ClassificatorModel>? industries,
    List<ClassificatorModel>? subIndustries,
    List<ClassificatorModel>? functions,
    List<ClassificatorModel>? subFunctions,
    required bool isUpdated,
  }) = _SuccessExpertState;

  const factory ProfileSettingsState.error() = _ErrorState;
}
