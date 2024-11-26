import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:clokwise/features/repositories/profile/profile_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_bloc.freezed.dart';
part 'avatar_event.dart';
part 'avatar_state.dart';

class AvatarBloc extends Bloc<AvatarEvent, AvatarState> {
  final ProfileRepository _profileRepository;
  final SnackBarRepository _snackBarRepository;

  AvatarBloc({
    required  profileRepository,
    required snackBarRepository,
  })  : _profileRepository = profileRepository,
        _snackBarRepository = snackBarRepository,
        super(const AvatarState.initial()) {
    on<AvatarEvent>(
      (event, emit) => event.map(
        fetchAvatarEventRequested: (event) => _onFetchAvatarRequested(emit), 
        saveAvatarEventRequested: (event) => _onSaveAvatar(event, emit)
      ),
    );
  }

  @override
  Future<void> close() async {
    _profileRepository.dispose();

    return super.close();
  }

  Future<void> _onFetchAvatarRequested(
    Emitter<AvatarState> emit,
  ) async {
    try {
      emit(const AvatarState.loading());

      final avatars = await _profileRepository.getAvatar();


      emit(AvatarState.success(avatars: avatars));
    } catch (e) {
      emit(const AvatarState.error());
    }
  }

  Future<void> _onSaveAvatar(
      _SaveAvatarEventRequestedEvent event,
      Emitter<AvatarState> emit,
      ) async {
    try {
      await _profileRepository.setAvatar(avatar: event.id);

      _snackBarRepository.addSuccess(text: 'Аватар изменен!');

      CustomNavigator.pop();
    } catch (e) {
      emit(const AvatarState.error());
    }
  }
}
