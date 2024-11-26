part of 'payment_bloc.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = _InitialState;

  const factory PaymentState.loading() = _LoadingState;

  const factory PaymentState.success() = _SuccessState;

  const factory PaymentState.successSubscription({required DateTime subscriptionUntil}) = _SuccessSubscriptionState;

  const factory PaymentState.error() = _ErrorState;
}
