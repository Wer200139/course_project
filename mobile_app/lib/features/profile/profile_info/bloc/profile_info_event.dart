part of 'profile_info_bloc.dart';

@freezed
class ProfileInfoEvent with _$ProfileInfoEvent {
  const factory ProfileInfoEvent.fetchProfileExpertRequested() = _FetchProfileExpertRequestedEvent;

  const factory ProfileInfoEvent.fetchProfileUserExpertRequested({required int id}) = _FetchProfileUserExpertRequestedEvent;

  const factory ProfileInfoEvent.fetchProfileUserCustomerRequested({required int id}) = _FetchProfileUserCustomerRequestedEvent;

  const factory ProfileInfoEvent.fetchProfileCustomerRequested() = _FetchProfileCustomerRequestedEvent;

  const factory ProfileInfoEvent.getReviewsRequested({
    required int id,
    required bool isExpert,
  }) = _GetReviewsRequestedEvent;

  const factory ProfileInfoEvent.getReviewsNextPageRequested({
    required int id,
    required int page,
    required bool isExpert,
  }) = _GetReviewsNextPageRequestedEvent;
}
