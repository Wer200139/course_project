// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginRequestedEventImplCopyWith<$Res> {
  factory _$$LoginRequestedEventImplCopyWith(_$LoginRequestedEventImpl value,
          $Res Function(_$LoginRequestedEventImpl) then) =
      __$$LoginRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, bool isExpert});
}

/// @nodoc
class __$$LoginRequestedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequestedEventImpl>
    implements _$$LoginRequestedEventImplCopyWith<$Res> {
  __$$LoginRequestedEventImplCopyWithImpl(_$LoginRequestedEventImpl _value,
      $Res Function(_$LoginRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isExpert = null,
  }) {
    return _then(_$LoginRequestedEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isExpert: null == isExpert
          ? _value.isExpert
          : isExpert // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginRequestedEventImpl implements _LoginRequestedEvent {
  const _$LoginRequestedEventImpl(
      {required this.email, required this.password, required this.isExpert});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool isExpert;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(email: $email, password: $password, isExpert: $isExpert)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isExpert, isExpert) ||
                other.isExpert == isExpert));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isExpert);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedEventImplCopyWith<_$LoginRequestedEventImpl> get copyWith =>
      __$$LoginRequestedEventImplCopyWithImpl<_$LoginRequestedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return loginRequested(email, password, isExpert);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return loginRequested?.call(email, password, isExpert);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password, isExpert);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class _LoginRequestedEvent implements AuthEvent {
  const factory _LoginRequestedEvent(
      {required final String email,
      required final String password,
      required final bool isExpert}) = _$LoginRequestedEventImpl;

  String get email;
  String get password;
  bool get isExpert;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestedEventImplCopyWith<_$LoginRequestedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpRequestedEventImplCopyWith<$Res> {
  factory _$$SignUpRequestedEventImplCopyWith(_$SignUpRequestedEventImpl value,
          $Res Function(_$SignUpRequestedEventImpl) then) =
      __$$SignUpRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String email,
      String password,
      String? phoneNumber,
      String firstName,
      String lastName});
}

/// @nodoc
class __$$SignUpRequestedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpRequestedEventImpl>
    implements _$$SignUpRequestedEventImplCopyWith<$Res> {
  __$$SignUpRequestedEventImplCopyWithImpl(_$SignUpRequestedEventImpl _value,
      $Res Function(_$SignUpRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = freezed,
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$SignUpRequestedEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpRequestedEventImpl implements _SignUpRequestedEvent {
  const _$SignUpRequestedEventImpl(
      {required this.email,
      required this.password,
      this.phoneNumber,
      required this.firstName,
      required this.lastName});

  @override
  final String email;
  @override
  final String password;
  @override
  final String? phoneNumber;
  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'AuthEvent.signUpRequested(email: $email, password: $password, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestedEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, phoneNumber, firstName, lastName);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestedEventImplCopyWith<_$SignUpRequestedEventImpl>
      get copyWith =>
          __$$SignUpRequestedEventImplCopyWithImpl<_$SignUpRequestedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return signUpRequested(email, password, phoneNumber, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return signUpRequested?.call(
        email, password, phoneNumber, firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(email, password, phoneNumber, firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return signUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return signUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (signUpRequested != null) {
      return signUpRequested(this);
    }
    return orElse();
  }
}

abstract class _SignUpRequestedEvent implements AuthEvent {
  const factory _SignUpRequestedEvent(
      {required final String email,
      required final String password,
      final String? phoneNumber,
      required final String firstName,
      required final String lastName}) = _$SignUpRequestedEventImpl;

  String get email;
  String get password;
  String? get phoneNumber;
  String get firstName;
  String get lastName;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpRequestedEventImplCopyWith<_$SignUpRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchToExpertEventImplCopyWith<$Res> {
  factory _$$SwitchToExpertEventImplCopyWith(_$SwitchToExpertEventImpl value,
          $Res Function(_$SwitchToExpertEventImpl) then) =
      __$$SwitchToExpertEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwitchToExpertEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SwitchToExpertEventImpl>
    implements _$$SwitchToExpertEventImplCopyWith<$Res> {
  __$$SwitchToExpertEventImplCopyWithImpl(_$SwitchToExpertEventImpl _value,
      $Res Function(_$SwitchToExpertEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwitchToExpertEventImpl implements _SwitchToExpertEvent {
  const _$SwitchToExpertEventImpl();

  @override
  String toString() {
    return 'AuthEvent.switchToExpert()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchToExpertEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return switchToExpert();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return switchToExpert?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (switchToExpert != null) {
      return switchToExpert();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return switchToExpert(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return switchToExpert?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (switchToExpert != null) {
      return switchToExpert(this);
    }
    return orElse();
  }
}

abstract class _SwitchToExpertEvent implements AuthEvent {
  const factory _SwitchToExpertEvent() = _$SwitchToExpertEventImpl;
}

/// @nodoc
abstract class _$$SwitchToCustomerEventImplCopyWith<$Res> {
  factory _$$SwitchToCustomerEventImplCopyWith(
          _$SwitchToCustomerEventImpl value,
          $Res Function(_$SwitchToCustomerEventImpl) then) =
      __$$SwitchToCustomerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwitchToCustomerEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SwitchToCustomerEventImpl>
    implements _$$SwitchToCustomerEventImplCopyWith<$Res> {
  __$$SwitchToCustomerEventImplCopyWithImpl(_$SwitchToCustomerEventImpl _value,
      $Res Function(_$SwitchToCustomerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SwitchToCustomerEventImpl implements _SwitchToCustomerEvent {
  const _$SwitchToCustomerEventImpl();

  @override
  String toString() {
    return 'AuthEvent.switchToCustomer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchToCustomerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return switchToCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return switchToCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (switchToCustomer != null) {
      return switchToCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return switchToCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return switchToCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (switchToCustomer != null) {
      return switchToCustomer(this);
    }
    return orElse();
  }
}

abstract class _SwitchToCustomerEvent implements AuthEvent {
  const factory _SwitchToCustomerEvent() = _$SwitchToCustomerEventImpl;
}

/// @nodoc
abstract class _$$ConfirmEmailRequestedEventImplCopyWith<$Res> {
  factory _$$ConfirmEmailRequestedEventImplCopyWith(
          _$ConfirmEmailRequestedEventImpl value,
          $Res Function(_$ConfirmEmailRequestedEventImpl) then) =
      __$$ConfirmEmailRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token, String email});
}

/// @nodoc
class __$$ConfirmEmailRequestedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ConfirmEmailRequestedEventImpl>
    implements _$$ConfirmEmailRequestedEventImplCopyWith<$Res> {
  __$$ConfirmEmailRequestedEventImplCopyWithImpl(
      _$ConfirmEmailRequestedEventImpl _value,
      $Res Function(_$ConfirmEmailRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? email = null,
  }) {
    return _then(_$ConfirmEmailRequestedEventImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailRequestedEventImpl implements _ConfirmEmailRequestedEvent {
  const _$ConfirmEmailRequestedEventImpl(
      {required this.token, required this.email});

  @override
  final String token;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.confirmEmailRequested(token: $token, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailRequestedEventImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailRequestedEventImplCopyWith<_$ConfirmEmailRequestedEventImpl>
      get copyWith => __$$ConfirmEmailRequestedEventImplCopyWithImpl<
          _$ConfirmEmailRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return confirmEmailRequested(token, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return confirmEmailRequested?.call(token, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (confirmEmailRequested != null) {
      return confirmEmailRequested(token, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return confirmEmailRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return confirmEmailRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (confirmEmailRequested != null) {
      return confirmEmailRequested(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmailRequestedEvent implements AuthEvent {
  const factory _ConfirmEmailRequestedEvent(
      {required final String token,
      required final String email}) = _$ConfirmEmailRequestedEventImpl;

  String get token;
  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmEmailRequestedEventImplCopyWith<_$ConfirmEmailRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendCodeRequestedEventImplCopyWith<$Res> {
  factory _$$ResendCodeRequestedEventImplCopyWith(
          _$ResendCodeRequestedEventImpl value,
          $Res Function(_$ResendCodeRequestedEventImpl) then) =
      __$$ResendCodeRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResendCodeRequestedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResendCodeRequestedEventImpl>
    implements _$$ResendCodeRequestedEventImplCopyWith<$Res> {
  __$$ResendCodeRequestedEventImplCopyWithImpl(
      _$ResendCodeRequestedEventImpl _value,
      $Res Function(_$ResendCodeRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResendCodeRequestedEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResendCodeRequestedEventImpl implements _ResendCodeRequestedEvent {
  const _$ResendCodeRequestedEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resendCodeRequested(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendCodeRequestedEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendCodeRequestedEventImplCopyWith<_$ResendCodeRequestedEventImpl>
      get copyWith => __$$ResendCodeRequestedEventImplCopyWithImpl<
          _$ResendCodeRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return resendCodeRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return resendCodeRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (resendCodeRequested != null) {
      return resendCodeRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return resendCodeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return resendCodeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (resendCodeRequested != null) {
      return resendCodeRequested(this);
    }
    return orElse();
  }
}

abstract class _ResendCodeRequestedEvent implements AuthEvent {
  const factory _ResendCodeRequestedEvent({required final String email}) =
      _$ResendCodeRequestedEventImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResendCodeRequestedEventImplCopyWith<_$ResendCodeRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordEmailRequestImplCopyWith<$Res> {
  factory _$$ResetPasswordEmailRequestImplCopyWith(
          _$ResetPasswordEmailRequestImpl value,
          $Res Function(_$ResetPasswordEmailRequestImpl) then) =
      __$$ResetPasswordEmailRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordEmailRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordEmailRequestImpl>
    implements _$$ResetPasswordEmailRequestImplCopyWith<$Res> {
  __$$ResetPasswordEmailRequestImplCopyWithImpl(
      _$ResetPasswordEmailRequestImpl _value,
      $Res Function(_$ResetPasswordEmailRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordEmailRequestImpl implements _ResetPasswordEmailRequest {
  const _$ResetPasswordEmailRequestImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPasswordRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEmailRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEmailRequestImplCopyWith<_$ResetPasswordEmailRequestImpl>
      get copyWith => __$$ResetPasswordEmailRequestImplCopyWithImpl<
          _$ResetPasswordEmailRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return resetPasswordRequest(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return resetPasswordRequest?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (resetPasswordRequest != null) {
      return resetPasswordRequest(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return resetPasswordRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return resetPasswordRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (resetPasswordRequest != null) {
      return resetPasswordRequest(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordEmailRequest implements AuthEvent {
  const factory _ResetPasswordEmailRequest({required final String email}) =
      _$ResetPasswordEmailRequestImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEmailRequestImplCopyWith<_$ResetPasswordEmailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendNewPasswordRequestImplCopyWith<$Res> {
  factory _$$SendNewPasswordRequestImplCopyWith(
          _$SendNewPasswordRequestImpl value,
          $Res Function(_$SendNewPasswordRequestImpl) then) =
      __$$SendNewPasswordRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String token, String password});
}

/// @nodoc
class __$$SendNewPasswordRequestImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SendNewPasswordRequestImpl>
    implements _$$SendNewPasswordRequestImplCopyWith<$Res> {
  __$$SendNewPasswordRequestImplCopyWithImpl(
      _$SendNewPasswordRequestImpl _value,
      $Res Function(_$SendNewPasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? token = null,
    Object? password = null,
  }) {
    return _then(_$SendNewPasswordRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendNewPasswordRequestImpl implements _SendNewPasswordRequest {
  const _$SendNewPasswordRequestImpl(
      {required this.email, required this.token, required this.password});

  @override
  final String email;
  @override
  final String token;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.sendNewPasswordRequest(email: $email, token: $token, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendNewPasswordRequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, token, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendNewPasswordRequestImplCopyWith<_$SendNewPasswordRequestImpl>
      get copyWith => __$$SendNewPasswordRequestImplCopyWithImpl<
          _$SendNewPasswordRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return sendNewPasswordRequest(email, token, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return sendNewPasswordRequest?.call(email, token, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (sendNewPasswordRequest != null) {
      return sendNewPasswordRequest(email, token, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return sendNewPasswordRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return sendNewPasswordRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (sendNewPasswordRequest != null) {
      return sendNewPasswordRequest(this);
    }
    return orElse();
  }
}

abstract class _SendNewPasswordRequest implements AuthEvent {
  const factory _SendNewPasswordRequest(
      {required final String email,
      required final String token,
      required final String password}) = _$SendNewPasswordRequestImpl;

  String get email;
  String get token;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendNewPasswordRequestImplCopyWith<_$SendNewPasswordRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedEventImplCopyWith<$Res> {
  factory _$$LogoutRequestedEventImplCopyWith(_$LogoutRequestedEventImpl value,
          $Res Function(_$LogoutRequestedEventImpl) then) =
      __$$LogoutRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutRequestedEventImpl>
    implements _$$LogoutRequestedEventImplCopyWith<$Res> {
  __$$LogoutRequestedEventImplCopyWithImpl(_$LogoutRequestedEventImpl _value,
      $Res Function(_$LogoutRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutRequestedEventImpl implements _LogoutRequestedEvent {
  const _$LogoutRequestedEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequestedEvent implements AuthEvent {
  const factory _LogoutRequestedEvent() = _$LogoutRequestedEventImpl;
}

/// @nodoc
abstract class _$$ChatListUpdatedEventImplCopyWith<$Res> {
  factory _$$ChatListUpdatedEventImplCopyWith(_$ChatListUpdatedEventImpl value,
          $Res Function(_$ChatListUpdatedEventImpl) then) =
      __$$ChatListUpdatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocketMessageModel message});
}

/// @nodoc
class __$$ChatListUpdatedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ChatListUpdatedEventImpl>
    implements _$$ChatListUpdatedEventImplCopyWith<$Res> {
  __$$ChatListUpdatedEventImplCopyWithImpl(_$ChatListUpdatedEventImpl _value,
      $Res Function(_$ChatListUpdatedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ChatListUpdatedEventImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as SocketMessageModel,
    ));
  }
}

/// @nodoc

class _$ChatListUpdatedEventImpl implements _ChatListUpdatedEvent {
  const _$ChatListUpdatedEventImpl({required this.message});

  @override
  final SocketMessageModel message;

  @override
  String toString() {
    return 'AuthEvent.chatListUpdated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListUpdatedEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListUpdatedEventImplCopyWith<_$ChatListUpdatedEventImpl>
      get copyWith =>
          __$$ChatListUpdatedEventImplCopyWithImpl<_$ChatListUpdatedEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return chatListUpdated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return chatListUpdated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (chatListUpdated != null) {
      return chatListUpdated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return chatListUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return chatListUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (chatListUpdated != null) {
      return chatListUpdated(this);
    }
    return orElse();
  }
}

abstract class _ChatListUpdatedEvent implements AuthEvent {
  const factory _ChatListUpdatedEvent(
      {required final SocketMessageModel message}) = _$ChatListUpdatedEventImpl;

  SocketMessageModel get message;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatListUpdatedEventImplCopyWith<_$ChatListUpdatedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthCheckRequestedEventImplCopyWith<$Res> {
  factory _$$AuthCheckRequestedEventImplCopyWith(
          _$AuthCheckRequestedEventImpl value,
          $Res Function(_$AuthCheckRequestedEventImpl) then) =
      __$$AuthCheckRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthCheckRequestedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthCheckRequestedEventImpl>
    implements _$$AuthCheckRequestedEventImplCopyWith<$Res> {
  __$$AuthCheckRequestedEventImplCopyWithImpl(
      _$AuthCheckRequestedEventImpl _value,
      $Res Function(_$AuthCheckRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthCheckRequestedEventImpl implements _AuthCheckRequestedEvent {
  const _$AuthCheckRequestedEventImpl();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthCheckRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, bool isExpert)
        loginRequested,
    required TResult Function(String email, String password,
            String? phoneNumber, String firstName, String lastName)
        signUpRequested,
    required TResult Function() switchToExpert,
    required TResult Function() switchToCustomer,
    required TResult Function(String token, String email) confirmEmailRequested,
    required TResult Function(String email) resendCodeRequested,
    required TResult Function(String email) resetPasswordRequest,
    required TResult Function(String email, String token, String password)
        sendNewPasswordRequest,
    required TResult Function() logoutRequested,
    required TResult Function(SocketMessageModel message) chatListUpdated,
    required TResult Function() authCheckRequested,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult? Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult? Function()? switchToExpert,
    TResult? Function()? switchToCustomer,
    TResult? Function(String token, String email)? confirmEmailRequested,
    TResult? Function(String email)? resendCodeRequested,
    TResult? Function(String email)? resetPasswordRequest,
    TResult? Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult? Function()? logoutRequested,
    TResult? Function(SocketMessageModel message)? chatListUpdated,
    TResult? Function()? authCheckRequested,
  }) {
    return authCheckRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool isExpert)?
        loginRequested,
    TResult Function(String email, String password, String? phoneNumber,
            String firstName, String lastName)?
        signUpRequested,
    TResult Function()? switchToExpert,
    TResult Function()? switchToCustomer,
    TResult Function(String token, String email)? confirmEmailRequested,
    TResult Function(String email)? resendCodeRequested,
    TResult Function(String email)? resetPasswordRequest,
    TResult Function(String email, String token, String password)?
        sendNewPasswordRequest,
    TResult Function()? logoutRequested,
    TResult Function(SocketMessageModel message)? chatListUpdated,
    TResult Function()? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequestedEvent value) loginRequested,
    required TResult Function(_SignUpRequestedEvent value) signUpRequested,
    required TResult Function(_SwitchToExpertEvent value) switchToExpert,
    required TResult Function(_SwitchToCustomerEvent value) switchToCustomer,
    required TResult Function(_ConfirmEmailRequestedEvent value)
        confirmEmailRequested,
    required TResult Function(_ResendCodeRequestedEvent value)
        resendCodeRequested,
    required TResult Function(_ResetPasswordEmailRequest value)
        resetPasswordRequest,
    required TResult Function(_SendNewPasswordRequest value)
        sendNewPasswordRequest,
    required TResult Function(_LogoutRequestedEvent value) logoutRequested,
    required TResult Function(_ChatListUpdatedEvent value) chatListUpdated,
    required TResult Function(_AuthCheckRequestedEvent value)
        authCheckRequested,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequestedEvent value)? loginRequested,
    TResult? Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult? Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult? Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult? Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult? Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult? Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult? Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult? Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult? Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult? Function(_AuthCheckRequestedEvent value)? authCheckRequested,
  }) {
    return authCheckRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequestedEvent value)? loginRequested,
    TResult Function(_SignUpRequestedEvent value)? signUpRequested,
    TResult Function(_SwitchToExpertEvent value)? switchToExpert,
    TResult Function(_SwitchToCustomerEvent value)? switchToCustomer,
    TResult Function(_ConfirmEmailRequestedEvent value)? confirmEmailRequested,
    TResult Function(_ResendCodeRequestedEvent value)? resendCodeRequested,
    TResult Function(_ResetPasswordEmailRequest value)? resetPasswordRequest,
    TResult Function(_SendNewPasswordRequest value)? sendNewPasswordRequest,
    TResult Function(_LogoutRequestedEvent value)? logoutRequested,
    TResult Function(_ChatListUpdatedEvent value)? chatListUpdated,
    TResult Function(_AuthCheckRequestedEvent value)? authCheckRequested,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthCheckRequestedEvent implements AuthEvent {
  const factory _AuthCheckRequestedEvent() = _$AuthCheckRequestedEventImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthState {
  const factory _InitialState() = _$InitialStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessLoginStateImplCopyWith<$Res> {
  factory _$$SuccessLoginStateImplCopyWith(_$SuccessLoginStateImpl value,
          $Res Function(_$SuccessLoginStateImpl) then) =
      __$$SuccessLoginStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginModel login});
}

/// @nodoc
class __$$SuccessLoginStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessLoginStateImpl>
    implements _$$SuccessLoginStateImplCopyWith<$Res> {
  __$$SuccessLoginStateImplCopyWithImpl(_$SuccessLoginStateImpl _value,
      $Res Function(_$SuccessLoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$SuccessLoginStateImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as LoginModel,
    ));
  }
}

/// @nodoc

class _$SuccessLoginStateImpl implements _SuccessLoginState {
  const _$SuccessLoginStateImpl({required this.login});

  @override
  final LoginModel login;

  @override
  String toString() {
    return 'AuthState.successLogin(login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginStateImpl &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginStateImplCopyWith<_$SuccessLoginStateImpl> get copyWith =>
      __$$SuccessLoginStateImplCopyWithImpl<_$SuccessLoginStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return successLogin(login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return successLogin?.call(login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return successLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successLogin != null) {
      return successLogin(this);
    }
    return orElse();
  }
}

abstract class _SuccessLoginState implements AuthState {
  const factory _SuccessLoginState({required final LoginModel login}) =
      _$SuccessLoginStateImpl;

  LoginModel get login;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessLoginStateImplCopyWith<_$SuccessLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSignUpStateImplCopyWith<$Res> {
  factory _$$SuccessSignUpStateImplCopyWith(_$SuccessSignUpStateImpl value,
          $Res Function(_$SuccessSignUpStateImpl) then) =
      __$$SuccessSignUpStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignUpModel user});
}

/// @nodoc
class __$$SuccessSignUpStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessSignUpStateImpl>
    implements _$$SuccessSignUpStateImplCopyWith<$Res> {
  __$$SuccessSignUpStateImplCopyWithImpl(_$SuccessSignUpStateImpl _value,
      $Res Function(_$SuccessSignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessSignUpStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as SignUpModel,
    ));
  }
}

/// @nodoc

class _$SuccessSignUpStateImpl implements _SuccessSignUpState {
  const _$SuccessSignUpStateImpl({required this.user});

  @override
  final SignUpModel user;

  @override
  String toString() {
    return 'AuthState.successSignUp(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignUpStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignUpStateImplCopyWith<_$SuccessSignUpStateImpl> get copyWith =>
      __$$SuccessSignUpStateImplCopyWithImpl<_$SuccessSignUpStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return successSignUp(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return successSignUp?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return successSignUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successSignUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successSignUp != null) {
      return successSignUp(this);
    }
    return orElse();
  }
}

abstract class _SuccessSignUpState implements AuthState {
  const factory _SuccessSignUpState({required final SignUpModel user}) =
      _$SuccessSignUpStateImpl;

  SignUpModel get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSignUpStateImplCopyWith<_$SuccessSignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessConfirmStateImplCopyWith<$Res> {
  factory _$$SuccessConfirmStateImplCopyWith(_$SuccessConfirmStateImpl value,
          $Res Function(_$SuccessConfirmStateImpl) then) =
      __$$SuccessConfirmStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});
}

/// @nodoc
class __$$SuccessConfirmStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessConfirmStateImpl>
    implements _$$SuccessConfirmStateImplCopyWith<$Res> {
  __$$SuccessConfirmStateImplCopyWithImpl(_$SuccessConfirmStateImpl _value,
      $Res Function(_$SuccessConfirmStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessConfirmStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$SuccessConfirmStateImpl implements _SuccessConfirmState {
  const _$SuccessConfirmStateImpl({required this.user});

  @override
  final UserModel user;

  @override
  String toString() {
    return 'AuthState.successConfirm(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessConfirmStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessConfirmStateImplCopyWith<_$SuccessConfirmStateImpl> get copyWith =>
      __$$SuccessConfirmStateImplCopyWithImpl<_$SuccessConfirmStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return successConfirm(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return successConfirm?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successConfirm != null) {
      return successConfirm(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return successConfirm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successConfirm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successConfirm != null) {
      return successConfirm(this);
    }
    return orElse();
  }
}

abstract class _SuccessConfirmState implements AuthState {
  const factory _SuccessConfirmState({required final UserModel user}) =
      _$SuccessConfirmStateImpl;

  UserModel get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessConfirmStateImplCopyWith<_$SuccessConfirmStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {UserModel user,
      bool isExpert,
      int? unreadMessagesExpert,
      int? unreadMessagesCustomer});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? isExpert = null,
    Object? unreadMessagesExpert = freezed,
    Object? unreadMessagesCustomer = freezed,
  }) {
    return _then(_$SuccessStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      isExpert: null == isExpert
          ? _value.isExpert
          : isExpert // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadMessagesExpert: freezed == unreadMessagesExpert
          ? _value.unreadMessagesExpert
          : unreadMessagesExpert // ignore: cast_nullable_to_non_nullable
              as int?,
      unreadMessagesCustomer: freezed == unreadMessagesCustomer
          ? _value.unreadMessagesCustomer
          : unreadMessagesCustomer // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(
      {required this.user,
      required this.isExpert,
      this.unreadMessagesExpert,
      this.unreadMessagesCustomer});

  @override
  final UserModel user;
  @override
  final bool isExpert;
  @override
  final int? unreadMessagesExpert;
  @override
  final int? unreadMessagesCustomer;

  @override
  String toString() {
    return 'AuthState.success(user: $user, isExpert: $isExpert, unreadMessagesExpert: $unreadMessagesExpert, unreadMessagesCustomer: $unreadMessagesCustomer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isExpert, isExpert) ||
                other.isExpert == isExpert) &&
            (identical(other.unreadMessagesExpert, unreadMessagesExpert) ||
                other.unreadMessagesExpert == unreadMessagesExpert) &&
            (identical(other.unreadMessagesCustomer, unreadMessagesCustomer) ||
                other.unreadMessagesCustomer == unreadMessagesCustomer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, isExpert,
      unreadMessagesExpert, unreadMessagesCustomer);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return success(
        user, isExpert, unreadMessagesExpert, unreadMessagesCustomer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return success?.call(
        user, isExpert, unreadMessagesExpert, unreadMessagesCustomer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          user, isExpert, unreadMessagesExpert, unreadMessagesCustomer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AuthState {
  const factory _SuccessState(
      {required final UserModel user,
      required final bool isExpert,
      final int? unreadMessagesExpert,
      final int? unreadMessagesCustomer}) = _$SuccessStateImpl;

  UserModel get user;
  bool get isExpert;
  int? get unreadMessagesExpert;
  int? get unreadMessagesCustomer;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordStateImplCopyWith<$Res> {
  factory _$$ResetPasswordStateImplCopyWith(_$ResetPasswordStateImpl value,
          $Res Function(_$ResetPasswordStateImpl) then) =
      __$$ResetPasswordStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetPasswordStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ResetPasswordStateImpl>
    implements _$$ResetPasswordStateImplCopyWith<$Res> {
  __$$ResetPasswordStateImplCopyWithImpl(_$ResetPasswordStateImpl _value,
      $Res Function(_$ResetPasswordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetPasswordStateImpl implements _ResetPasswordState {
  const _$ResetPasswordStateImpl();

  @override
  String toString() {
    return 'AuthState.resetPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetPasswordStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return resetPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return resetPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordState implements AuthState {
  const factory _ResetPasswordState() = _$ResetPasswordStateImpl;
}

/// @nodoc
abstract class _$$ConfirmEmailStateImplCopyWith<$Res> {
  factory _$$ConfirmEmailStateImplCopyWith(_$ConfirmEmailStateImpl value,
          $Res Function(_$ConfirmEmailStateImpl) then) =
      __$$ConfirmEmailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ConfirmEmailStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ConfirmEmailStateImpl>
    implements _$$ConfirmEmailStateImplCopyWith<$Res> {
  __$$ConfirmEmailStateImplCopyWithImpl(_$ConfirmEmailStateImpl _value,
      $Res Function(_$ConfirmEmailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ConfirmEmailStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmEmailStateImpl implements _ConfirmEmailState {
  const _$ConfirmEmailStateImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthState.confirmEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmEmailStateImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmEmailStateImplCopyWith<_$ConfirmEmailStateImpl> get copyWith =>
      __$$ConfirmEmailStateImplCopyWithImpl<_$ConfirmEmailStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return confirmEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return confirmEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmailState implements AuthState {
  const factory _ConfirmEmailState({required final String email}) =
      _$ConfirmEmailStateImpl;

  String get email;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmEmailStateImplCopyWith<_$ConfirmEmailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'AuthState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginModel login) successLogin,
    required TResult Function(SignUpModel user) successSignUp,
    required TResult Function(UserModel user) successConfirm,
    required TResult Function(UserModel user, bool isExpert,
            int? unreadMessagesExpert, int? unreadMessagesCustomer)
        success,
    required TResult Function() resetPassword,
    required TResult Function(String email) confirmEmail,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginModel login)? successLogin,
    TResult? Function(SignUpModel user)? successSignUp,
    TResult? Function(UserModel user)? successConfirm,
    TResult? Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult? Function()? resetPassword,
    TResult? Function(String email)? confirmEmail,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginModel login)? successLogin,
    TResult Function(SignUpModel user)? successSignUp,
    TResult Function(UserModel user)? successConfirm,
    TResult Function(UserModel user, bool isExpert, int? unreadMessagesExpert,
            int? unreadMessagesCustomer)?
        success,
    TResult Function()? resetPassword,
    TResult Function(String email)? confirmEmail,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessLoginState value) successLogin,
    required TResult Function(_SuccessSignUpState value) successSignUp,
    required TResult Function(_SuccessConfirmState value) successConfirm,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ResetPasswordState value) resetPassword,
    required TResult Function(_ConfirmEmailState value) confirmEmail,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessLoginState value)? successLogin,
    TResult? Function(_SuccessSignUpState value)? successSignUp,
    TResult? Function(_SuccessConfirmState value)? successConfirm,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ResetPasswordState value)? resetPassword,
    TResult? Function(_ConfirmEmailState value)? confirmEmail,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessLoginState value)? successLogin,
    TResult Function(_SuccessSignUpState value)? successSignUp,
    TResult Function(_SuccessConfirmState value)? successConfirm,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ResetPasswordState value)? resetPassword,
    TResult Function(_ConfirmEmailState value)? confirmEmail,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AuthState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
