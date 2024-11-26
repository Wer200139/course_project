import 'package:clokwise/features/repositories/profile/models/comment_result_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_degree_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_level_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_company_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_customer_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_expert_model.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info_bloc.freezed.dart';
part 'profile_info_event.dart';
part 'profile_info_state.dart';

class ProfileInfoBloc extends Bloc<ProfileInfoEvent, ProfileInfoState> {
  final ProfileRepository _profileRepository;
  final SnackBarRepository _snackBarRepository;

  ProfileInfoBloc({
    required profileRepository,
    required snackBarRepository,
  })  : _profileRepository = profileRepository,
        _snackBarRepository = snackBarRepository,
        super(const ProfileInfoState.initial()) {
    on<ProfileInfoEvent>(
      (event, emit) => event.map(
        fetchProfileExpertRequested: (event) =>
            _onFetchProfileExpertRequested(emit),
        fetchProfileCustomerRequested: (event) =>
            _onFetchProfileCustomerInfo(emit),
        fetchProfileUserExpertRequested: (event) =>
            _onFetchProfileUserExpertRequestedEvent(event, emit),
        fetchProfileUserCustomerRequested: (event) =>
            _onFetchProfileUserCustomerRequestedEvent(event, emit),
        getReviewsRequested: (event) => _onGetReviews(event, emit),
        getReviewsNextPageRequested: (event) => _onGetReviewsNextPage(event, emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    _profileRepository.dispose();

    return super.close();
  }

  Future<void> _onGetReviewsNextPage(
    _GetReviewsNextPageRequestedEvent event,
    Emitter<ProfileInfoState> emit,
  ) async {
    try {
      emit(const ProfileInfoState.loading());

      final review = await _profileRepository.getReviews(id: event.id, isExpert: event.isExpert);

      emit(
        ProfileInfoState.succesReviews(review: review),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ProfileInfoState.error());
    }
  }

  Future<void> _onGetReviews(
      _GetReviewsRequestedEvent event,
      Emitter<ProfileInfoState> emit,
      ) async {
    try {
      emit(const ProfileInfoState.loading());

      final review = await _profileRepository.getReviews(id: event.id, isExpert: event.isExpert);

      emit(
        ProfileInfoState.succesReviews(review: review),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ProfileInfoState.error());
    }
  }

  Future<void> _onFetchProfileCustomerInfo(
    Emitter<ProfileInfoState> emit,
  ) async {
    try {
      emit(const ProfileInfoState.loading());

      var customer;
      final company = await _profileRepository.getCompanyProfile();

      if (company.companyInn == null) {
        customer = await _profileRepository.getCustomerProfile();
      }

      emit(
        ProfileInfoState.successCustomer(customer: customer, company: company),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ProfileInfoState.error());
    }
  }

  Future<void> _onFetchProfileUserCustomerRequestedEvent(
    event,
    Emitter<ProfileInfoState> emit,
  ) async {
    try {
      emit(const ProfileInfoState.loading());

      var customer;
      final company = await _profileRepository.getUserCompany(event.id);

      if (company.companyInn == null) {
        customer = await _profileRepository.getUserCustomer(event.id);
      }

      emit(
        ProfileInfoState.successCustomer(customer: customer, company: company),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ProfileInfoState.error());
    }
  }

  Future<void> _onFetchProfileUserExpertRequestedEvent(
    event,
    Emitter<ProfileInfoState> emit,
  ) async {
    try {
      emit(const ProfileInfoState.loading());

      final expert = await _profileRepository.getUserExpert(event.id);
      final level = await _profileRepository.getEducationLevels();
      final degree = await _profileRepository.getEducationDegrees();

      emit(
        ProfileInfoState.successExpert(
          expert: expert,
          educationsDegrees: degree,
          educationsLevels: level,
        ),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ProfileInfoState.error());
    }
  }

  Future<void> _onFetchProfileExpertRequested(
    Emitter<ProfileInfoState> emit,
  ) async {
    try {
      emit(const ProfileInfoState.loading());

      classificatorsIds.clear();
      final expert = await _profileRepository.getProfileExpert();
      for (var exp in expert.experience) {
        for (var segment in exp.segments) {
          classificatorsIds.add(([segment.industry.id, segment.function.id]));
        }
      }
      final level = await _profileRepository.getEducationLevels();
      final degree = await _profileRepository.getEducationDegrees();

      emit(
        ProfileInfoState.successExpert(
          expert: expert,
          educationsDegrees: degree,
          educationsLevels: level,
        ),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
      emit(const ProfileInfoState.error());
    }
  }
}
