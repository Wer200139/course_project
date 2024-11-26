part of 'payment_bloc.dart';

@freezed
class PaymentEvent with _$PaymentEvent {
  const factory PaymentEvent.prolongSubscriptionRequested() = _ProlongSubscriptionRequestedEvent;

  const factory PaymentEvent.payProfileViewRequested({required int idProfile}) = _PayProfileViewEvent;

  const factory PaymentEvent.payBoostResponseRequested({required int idChat}) = _PayBoostResponseRequestedEvent;
}
