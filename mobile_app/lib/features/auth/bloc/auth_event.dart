part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginRequested({
    required String email,
    required String password,
    required bool isExpert,
  }) = _LoginRequestedEvent;

  const factory AuthEvent.signUpRequested({
    required String email,
    required String password,
    String? phoneNumber,
    required String firstName,
    required String lastName,
  }) = _SignUpRequestedEvent;

  const factory AuthEvent.switchToExpert() = _SwitchToExpertEvent;

  const factory AuthEvent.switchToCustomer() = _SwitchToCustomerEvent;

  const factory AuthEvent.confirmEmailRequested({
    required String token,
    required String email,
  }) = _ConfirmEmailRequestedEvent;

  const factory AuthEvent.resendCodeRequested({
    required String email,
  }) = _ResendCodeRequestedEvent;

  const factory AuthEvent.resetPasswordRequest({
    required String email,
  }) = _ResetPasswordEmailRequest;

  const factory AuthEvent.sendNewPasswordRequest({
    required String email,
    required String token,
    required String password,
  }) = _SendNewPasswordRequest;

  const factory AuthEvent.logoutRequested() = _LogoutRequestedEvent;

  const factory AuthEvent.chatListUpdated({
    required SocketMessageModel message,
  }) = _ChatListUpdatedEvent;

  const factory AuthEvent.authCheckRequested() = _AuthCheckRequestedEvent;
}
