import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_degree_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_level_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_company_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_customer_model.dart';
import 'package:clokwise/features/repositories/profile/models/profile_expert_model.dart';
import 'package:clokwise/features/repositories/profile/requests/experience_request.dart';
import 'package:clokwise/features/repositories/profile/requests/update_profile_request.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/repositories/user/models/user_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_settings_bloc.freezed.dart';

part 'profile_settings_event.dart';

part 'profile_settings_state.dart';

class ProfileSettingsBloc
    extends Bloc<ProfileSettingsEvent, ProfileSettingsState> {
  final ProfileRepository _profileRepository;
  final SnackBarRepository _snackBarRepository;
  final ClassificatorRepository _classificatorRepository;

  ProfileSettingsBloc({
    required ProfileRepository profileRepository,
    required SnackBarRepository snackBarRepisotory,
    required ClassificatorRepository classificatorRepository,
  })  : _profileRepository = profileRepository,
        _snackBarRepository = snackBarRepisotory,
        _classificatorRepository = classificatorRepository,
        super(const ProfileSettingsState.initial()) {
    on<ProfileSettingsEvent>(
      (event, emit) => event.map(
        fetchExpertSettingsRequested: (event) =>
            _onFetchExpertSettingsRequested(emit),
        fetchCustomerSettingsRequested: (event) =>
            _onFetchCustomerSettingsRequested(emit),
        editExpertRequested: (event) => _onEditExpertRequested(event, emit),
        editCustomerRequested: (event) => _onEditCustomerRequested(event, emit),
        changePasswordRequested: (event) =>
            _onChangePasswordRequested(event, emit),
        updateActivityRequested: (event) =>
            _onUpdateActivityRequested(event, emit),
        updateCompanyRequested: (event) =>
            _onUpdateCompanyRequested(event, emit),
        updateEducationRequested: (event) =>
            _onUpdateEducationRequested(event, emit),
        updateExperienceRequested: (event) =>
            _onUpdateExperienceRequested(event, emit),
        getIndustriesRequested: (event) => _onGetIndustriesRequested(emit),
        getSubindustriesRequested: (event) =>
            _onGetSubindustriesRequested(event, emit),
        getFunctionsRequested: (event) => _onGetFunctionsRequested(event, emit),
        getSubfunctionRequested: (event) =>
            _onGetSubfunctionsRequested(event, emit),
        setAvatar: (event) => _onSetAvatarRequested(event, emit),
        getCode: (event) => _onGetCodeRequested(emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    _profileRepository.dispose();

    return super.close();
  }

  Future<void> _onFetchCustomerSettingsRequested(
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      emit(const ProfileSettingsState.loading());

      final company = await _profileRepository.getCompanyProfile();
      final customer = await _profileRepository.getCustomerProfile();

      emit(ProfileSettingsState.succesCustomer(
          company: company, customer: customer));
    } catch (e) {
      emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onFetchExpertSettingsRequested(
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      emit(const ProfileSettingsState.loading());

      final expert = await _profileRepository.getProfileExpert();
      final user = UserModel(
        id: 0,
        firstName: expert.firstName,
        lastName: expert.lastName,
        phoneNumber: expert.phoneNumber,
        email: expert.email,
      );
      final educationsDeegres = await _profileRepository.getEducationDegrees();
      final educationLevels = await _profileRepository.getEducationLevels();

      emit(ProfileSettingsState.successExpert(
        expert: expert,
        educationsLevels: educationLevels,
        educationsDegrees: educationsDeegres,
        isUpdated: false,
      ));
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onEditCustomerRequested(
    _EditCustomerRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      await _profileRepository.updateProfile(request: event.request);

      if (event.newPassword?.isNotEmpty ?? false) {
        await _profileRepository.changePassword(
            currentPassword: event.curPassword!,
            newPassword: event.newPassword!);
        emit(const ProfileSettingsState.succesChangePassword());
      }

      _snackBarRepository.addSuccess(text: 'Данные сохранены');

      emit(const ProfileSettingsState.loading());

      final company = await _profileRepository.getCompanyProfile();
      final customer = await _profileRepository.getCustomerProfile();

      CustomNavigator.pop();

      emit(
        ProfileSettingsState.succesCustomer(
            company: company, customer: customer),
      );
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      // emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onEditExpertRequested(
    _EditExpertRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      await _profileRepository.updateProfile(request: event.request);
      final expert = await _profileRepository.getProfileExpert();

      //emit(const ProfileSettingsState.loading());

      final educationsDeegres = await _profileRepository.getEducationDegrees();
      final educationLevels = await _profileRepository.getEducationLevels();
      final industries = await _profileRepository.getAvailableIndustries();

      if (event.newPassword?.isNotEmpty ?? false) {
        await _profileRepository.changePassword(
            currentPassword: event.curPassword!,
            newPassword: event.newPassword!);
        emit(const ProfileSettingsState.succesChangePassword());
      }

      _snackBarRepository.addSuccess(text: 'Данные сохранены');

      CustomNavigator.pop();

      emit(ProfileSettingsState.successExpert(
        expert: expert,
        educationsLevels: educationLevels,
        educationsDegrees: educationsDeegres,
        isUpdated: false,
      ));
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      //emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onChangePasswordRequested(
    _ChangePasswordRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      await _profileRepository.changePassword(
          currentPassword: event.curPassword, newPassword: event.newPassword);

      _snackBarRepository.addSuccess(text: 'Пароль изменен');

      state.mapOrNull(
        succesCustomer: (state) {
          emit(state.copyWith());
        },
        successExpert: (state) {
          emit(state.copyWith());
        },
      );
    } catch (e) {
      if (e.toString().contains('wrongpassword')) {
        _snackBarRepository.addError(text: 'Неверный пароль');
        return;
      }
      _snackBarRepository.addError(text: 'Произошла ошибка');
      // emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onUpdateCompanyRequested(
    _UpdateCompanyRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      await _profileRepository.updateCompany(
          website: event.website,
          description: event.description,
          inn: event.tin,
          name: event.name);

      _snackBarRepository.addSuccess(text: 'Данные сохранены');
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      //  emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onUpdateActivityRequested(
    _UpdateActivityRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      await _profileRepository.updateActivity(
          website: event.website, description: event.description);

      _snackBarRepository.addSuccess(text: 'Данные сохранены');
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      // emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onUpdateEducationRequested(
    _UpdateEducationRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      final educations = await _profileRepository.updateEducation(
          educations: event.educations);

      _snackBarRepository.addSuccess(text: 'Данные сохранены');

      state.mapOrNull(
        successExpert: (state) {
          emit(state.copyWith());
        },
      );
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      //emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onUpdateExperienceRequested(
    _UpdateExperienceRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      final experience = await _profileRepository.updateExperience(
          experiences: event.experiences);

      _snackBarRepository.addSuccess(text: 'Данные сохранены');

      state.mapOrNull(
        successExpert: (state) {
          emit(state.copyWith());
        },
      );
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      // emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onGetIndustriesRequested(
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      final industries = await _classificatorRepository.getIndustries();

      emit(ProfileSettingsState.succesIndustries(industries: industries));
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      //emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onGetSubindustriesRequested(
    _GetSubindustriesRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {

      final subIndustries =
          await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(ProfileSettingsState.succesSubIndustries(
          subindustries: subIndustries));
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
      //emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onGetFunctionsRequested(
    _GetFunctionsRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {

      final functions =
          await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(ProfileSettingsState.succesFunction(functions: functions));
    } catch (e) {
      emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onGetSubfunctionsRequested(
    _GetSubfunctionsRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {

      final subFunctions =
          await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(ProfileSettingsState.succesSubFunction(subfunctions: subFunctions));

    } catch (e) {
      emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onSetAvatarRequested(
    _SetAvatarRequested event,
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      await _profileRepository.setAvatar(avatar: event.avatar);

      state.mapOrNull(
        successExpert: (state) {
          emit(state.copyWith());
        },
      );
    } catch (e) {
      emit(const ProfileSettingsState.error());
    }
  }

  Future<void> _onGetCodeRequested(
    Emitter<ProfileSettingsState> emit,
  ) async {
    try {
      // emit(const ProfileSettingsState.loading());

      await _profileRepository.requestSaveInfo();

      state.mapOrNull(
        successExpert: (state) {
          emit(state.copyWith());
        },
      );
    } catch (e) {
      emit(const ProfileSettingsState.error());
    }
  }
}
