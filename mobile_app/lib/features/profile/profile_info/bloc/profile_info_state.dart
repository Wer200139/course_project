part of 'profile_info_bloc.dart';

@freezed
class ProfileInfoState with _$ProfileInfoState {
  const factory ProfileInfoState.initial() = _InitialState;

  const factory ProfileInfoState.loading() = _LoadingState;

  const factory ProfileInfoState.successExpert({
    required ProfileExpertModel expert,
    required List<EducationDegreeModel> educationsDegrees,
    required List<EducationLevelModel> educationsLevels,
  }) = _SuccessExpertState;

  const factory ProfileInfoState.successCustomer({
    required ProfileCompanyModel company,
    ProfileCustomerModel? customer
  }) = _SuccessCustomerState;

  const factory ProfileInfoState.succesReviews({
    required ReviewResultModel review,
  }) = _SuccessReviewsState;

  const factory ProfileInfoState.error() = _ErrorState;
}
