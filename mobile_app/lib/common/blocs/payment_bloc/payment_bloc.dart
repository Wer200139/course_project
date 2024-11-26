import 'package:clokwise/features/repositories/payment/payment_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_bloc.freezed.dart';

part 'payment_event.dart';

part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  final PaymentRepository _paymentRepository;
  final SnackBarRepository _snackBarRepository;

  PaymentBloc({
    required PaymentRepository paymentRepository,
    required SnackBarRepository snackBarRepository,
  })  : _paymentRepository = paymentRepository,
        _snackBarRepository = snackBarRepository,
        super(const PaymentState.initial()) {
    on<PaymentEvent>(
      (event, emit) => event.map(
        prolongSubscriptionRequested: (event) => _onProlongSubscriptionRequested(emit),
        payProfileViewRequested: (event) => _onPayProfileViewRequested(event, emit),
        payBoostResponseRequested: (event) => _onPayBoostResponseRequested(event, emit),
      ),
    );
  }

  @override
  Future<void> close() async {
    _paymentRepository.dispose();

    return super.close();
  }

  Future<void> _onPayBoostResponseRequested(
      _PayBoostResponseRequestedEvent event,
      Emitter<PaymentState> emit,
      ) async {
    try {
      emit(const PaymentState.loading());

      _paymentRepository.payBoostResponse(idChat: event.idChat);

      emit(const PaymentState.success());
    } catch (e, s) {
      _snackBarRepository.addError(text: 'При оплате произошла ошибка');
      emit(const PaymentState.error());
    }
  }

  Future<void> _onPayProfileViewRequested(
      _PayProfileViewEvent event,
      Emitter<PaymentState> emit,
      ) async {
    try {
      emit(const PaymentState.loading());

      _paymentRepository.payProfileView(idProfile: event.idProfile);

      emit(PaymentState.success());
    } catch (e, s) {
      _snackBarRepository.addError(text: 'При оплате произошла ошибка');
      emit(const PaymentState.error());
    }
  }

  Future<void> _onProlongSubscriptionRequested(
    Emitter<PaymentState> emit,
  ) async {
    try {
      emit(const PaymentState.loading());

      final result = await _paymentRepository.prolongSubscription();

      emit(PaymentState.successSubscription(subscriptionUntil: result));
    } catch (e, s) {
      _snackBarRepository.addError(text: 'При оплате произошла ошибка');
      emit(const PaymentState.error());
    }
  }
}
