part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _InitialState;

  const factory AuthState.loading() = _LoadingState;

  const factory AuthState.successLogin({required LoginModel login}) =
      _SuccessLoginState;

  const factory AuthState.successSignUp({required SignUpModel user}) =
      _SuccessSignUpState;

  const factory AuthState.successConfirm({required UserModel user}) =
      _SuccessConfirmState;

  const factory AuthState.success({
    required UserModel user,
    required bool isExpert,
    int? unreadMessagesExpert,
    int? unreadMessagesCustomer,
  }) = _SuccessState;

  const factory AuthState.resetPassword() = _ResetPasswordState;

  const factory AuthState.confirmEmail({required String email}) =
      _ConfirmEmailState;

  const factory AuthState.error() = _ErrorState;
}
