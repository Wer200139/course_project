import 'dart:async';

import 'package:clokwise/features/snackbar/data/repositories/models/snack_bar_model.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack_bar_bloc.freezed.dart';
part 'snack_bar_event.dart';
part 'snack_bar_state.dart';

class SnackBarBloc extends Bloc<SnackBarEvent, SnackBarState> {
  final SnackBarRepository _snackBarRepository;

  late final StreamSubscription<SnackBarModel> _snackBarSubscription;

  SnackBarBloc({
    required SnackBarRepository snackBarRepository,
  })  : _snackBarRepository = snackBarRepository,
        super(const SnackBarState.initial()) {
    on<SnackBarEvent>(
      (event, emit) => event.map(
        emitRequested: (event) => _onEmitRequested(event, emit),
      ),
    );

    _listenSnackBarRepository();
  }

  @override
  Future<void> close() async {
    await _snackBarRepository.dispose();
    await _snackBarSubscription.cancel();

    return super.close();
  }

  Future<void> _onEmitRequested(
    _EmitRequestedEvent event,
    Emitter<SnackBarState> emit,
  ) async {
    emit(const SnackBarState.loading());

    if (event.model.type.isPush) {
      emit(SnackBarState.push(text: event.model.text));
    }

    if (event.model.type.isInfo) {
      emit(SnackBarState.info(text: event.model.text));
    }

    if (event.model.type.isWarning) {
      emit(SnackBarState.warning(text: event.model.text));
    }

    if (event.model.type.isSuccess) {
      emit(SnackBarState.success(text: event.model.text));
    }

    if (event.model.type.isError) {
      emit(SnackBarState.error(text: event.model.text));
    }

    emit(const SnackBarState.initial());
  }

  void _listenSnackBarRepository() {
    _snackBarSubscription = _snackBarRepository.snackBarStream.listen((snackBar) {
      add(SnackBarEvent.emitRequested(model: snackBar));
    });
  }
}
