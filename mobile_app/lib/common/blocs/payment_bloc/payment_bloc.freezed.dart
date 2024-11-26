// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prolongSubscriptionRequested,
    required TResult Function(int idProfile) payProfileViewRequested,
    required TResult Function(int idChat) payBoostResponseRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prolongSubscriptionRequested,
    TResult? Function(int idProfile)? payProfileViewRequested,
    TResult? Function(int idChat)? payBoostResponseRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prolongSubscriptionRequested,
    TResult Function(int idProfile)? payProfileViewRequested,
    TResult Function(int idChat)? payBoostResponseRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProlongSubscriptionRequestedEvent value)
        prolongSubscriptionRequested,
    required TResult Function(_PayProfileViewEvent value)
        payProfileViewRequested,
    required TResult Function(_PayBoostResponseRequestedEvent value)
        payBoostResponseRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult? Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult? Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentEventCopyWith<$Res> {
  factory $PaymentEventCopyWith(
          PaymentEvent value, $Res Function(PaymentEvent) then) =
      _$PaymentEventCopyWithImpl<$Res, PaymentEvent>;
}

/// @nodoc
class _$PaymentEventCopyWithImpl<$Res, $Val extends PaymentEvent>
    implements $PaymentEventCopyWith<$Res> {
  _$PaymentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProlongSubscriptionRequestedEventImplCopyWith<$Res> {
  factory _$$ProlongSubscriptionRequestedEventImplCopyWith(
          _$ProlongSubscriptionRequestedEventImpl value,
          $Res Function(_$ProlongSubscriptionRequestedEventImpl) then) =
      __$$ProlongSubscriptionRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProlongSubscriptionRequestedEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res,
        _$ProlongSubscriptionRequestedEventImpl>
    implements _$$ProlongSubscriptionRequestedEventImplCopyWith<$Res> {
  __$$ProlongSubscriptionRequestedEventImplCopyWithImpl(
      _$ProlongSubscriptionRequestedEventImpl _value,
      $Res Function(_$ProlongSubscriptionRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProlongSubscriptionRequestedEventImpl
    implements _ProlongSubscriptionRequestedEvent {
  const _$ProlongSubscriptionRequestedEventImpl();

  @override
  String toString() {
    return 'PaymentEvent.prolongSubscriptionRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProlongSubscriptionRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prolongSubscriptionRequested,
    required TResult Function(int idProfile) payProfileViewRequested,
    required TResult Function(int idChat) payBoostResponseRequested,
  }) {
    return prolongSubscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prolongSubscriptionRequested,
    TResult? Function(int idProfile)? payProfileViewRequested,
    TResult? Function(int idChat)? payBoostResponseRequested,
  }) {
    return prolongSubscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prolongSubscriptionRequested,
    TResult Function(int idProfile)? payProfileViewRequested,
    TResult Function(int idChat)? payBoostResponseRequested,
    required TResult orElse(),
  }) {
    if (prolongSubscriptionRequested != null) {
      return prolongSubscriptionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProlongSubscriptionRequestedEvent value)
        prolongSubscriptionRequested,
    required TResult Function(_PayProfileViewEvent value)
        payProfileViewRequested,
    required TResult Function(_PayBoostResponseRequestedEvent value)
        payBoostResponseRequested,
  }) {
    return prolongSubscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult? Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult? Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
  }) {
    return prolongSubscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
    required TResult orElse(),
  }) {
    if (prolongSubscriptionRequested != null) {
      return prolongSubscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class _ProlongSubscriptionRequestedEvent implements PaymentEvent {
  const factory _ProlongSubscriptionRequestedEvent() =
      _$ProlongSubscriptionRequestedEventImpl;
}

/// @nodoc
abstract class _$$PayProfileViewEventImplCopyWith<$Res> {
  factory _$$PayProfileViewEventImplCopyWith(_$PayProfileViewEventImpl value,
          $Res Function(_$PayProfileViewEventImpl) then) =
      __$$PayProfileViewEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idProfile});
}

/// @nodoc
class __$$PayProfileViewEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res, _$PayProfileViewEventImpl>
    implements _$$PayProfileViewEventImplCopyWith<$Res> {
  __$$PayProfileViewEventImplCopyWithImpl(_$PayProfileViewEventImpl _value,
      $Res Function(_$PayProfileViewEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProfile = null,
  }) {
    return _then(_$PayProfileViewEventImpl(
      idProfile: null == idProfile
          ? _value.idProfile
          : idProfile // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PayProfileViewEventImpl implements _PayProfileViewEvent {
  const _$PayProfileViewEventImpl({required this.idProfile});

  @override
  final int idProfile;

  @override
  String toString() {
    return 'PaymentEvent.payProfileViewRequested(idProfile: $idProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayProfileViewEventImpl &&
            (identical(other.idProfile, idProfile) ||
                other.idProfile == idProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idProfile);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayProfileViewEventImplCopyWith<_$PayProfileViewEventImpl> get copyWith =>
      __$$PayProfileViewEventImplCopyWithImpl<_$PayProfileViewEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prolongSubscriptionRequested,
    required TResult Function(int idProfile) payProfileViewRequested,
    required TResult Function(int idChat) payBoostResponseRequested,
  }) {
    return payProfileViewRequested(idProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prolongSubscriptionRequested,
    TResult? Function(int idProfile)? payProfileViewRequested,
    TResult? Function(int idChat)? payBoostResponseRequested,
  }) {
    return payProfileViewRequested?.call(idProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prolongSubscriptionRequested,
    TResult Function(int idProfile)? payProfileViewRequested,
    TResult Function(int idChat)? payBoostResponseRequested,
    required TResult orElse(),
  }) {
    if (payProfileViewRequested != null) {
      return payProfileViewRequested(idProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProlongSubscriptionRequestedEvent value)
        prolongSubscriptionRequested,
    required TResult Function(_PayProfileViewEvent value)
        payProfileViewRequested,
    required TResult Function(_PayBoostResponseRequestedEvent value)
        payBoostResponseRequested,
  }) {
    return payProfileViewRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult? Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult? Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
  }) {
    return payProfileViewRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
    required TResult orElse(),
  }) {
    if (payProfileViewRequested != null) {
      return payProfileViewRequested(this);
    }
    return orElse();
  }
}

abstract class _PayProfileViewEvent implements PaymentEvent {
  const factory _PayProfileViewEvent({required final int idProfile}) =
      _$PayProfileViewEventImpl;

  int get idProfile;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayProfileViewEventImplCopyWith<_$PayProfileViewEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PayBoostResponseRequestedEventImplCopyWith<$Res> {
  factory _$$PayBoostResponseRequestedEventImplCopyWith(
          _$PayBoostResponseRequestedEventImpl value,
          $Res Function(_$PayBoostResponseRequestedEventImpl) then) =
      __$$PayBoostResponseRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idChat});
}

/// @nodoc
class __$$PayBoostResponseRequestedEventImplCopyWithImpl<$Res>
    extends _$PaymentEventCopyWithImpl<$Res,
        _$PayBoostResponseRequestedEventImpl>
    implements _$$PayBoostResponseRequestedEventImplCopyWith<$Res> {
  __$$PayBoostResponseRequestedEventImplCopyWithImpl(
      _$PayBoostResponseRequestedEventImpl _value,
      $Res Function(_$PayBoostResponseRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idChat = null,
  }) {
    return _then(_$PayBoostResponseRequestedEventImpl(
      idChat: null == idChat
          ? _value.idChat
          : idChat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PayBoostResponseRequestedEventImpl
    implements _PayBoostResponseRequestedEvent {
  const _$PayBoostResponseRequestedEventImpl({required this.idChat});

  @override
  final int idChat;

  @override
  String toString() {
    return 'PaymentEvent.payBoostResponseRequested(idChat: $idChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayBoostResponseRequestedEventImpl &&
            (identical(other.idChat, idChat) || other.idChat == idChat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idChat);

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayBoostResponseRequestedEventImplCopyWith<
          _$PayBoostResponseRequestedEventImpl>
      get copyWith => __$$PayBoostResponseRequestedEventImplCopyWithImpl<
          _$PayBoostResponseRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() prolongSubscriptionRequested,
    required TResult Function(int idProfile) payProfileViewRequested,
    required TResult Function(int idChat) payBoostResponseRequested,
  }) {
    return payBoostResponseRequested(idChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? prolongSubscriptionRequested,
    TResult? Function(int idProfile)? payProfileViewRequested,
    TResult? Function(int idChat)? payBoostResponseRequested,
  }) {
    return payBoostResponseRequested?.call(idChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? prolongSubscriptionRequested,
    TResult Function(int idProfile)? payProfileViewRequested,
    TResult Function(int idChat)? payBoostResponseRequested,
    required TResult orElse(),
  }) {
    if (payBoostResponseRequested != null) {
      return payBoostResponseRequested(idChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProlongSubscriptionRequestedEvent value)
        prolongSubscriptionRequested,
    required TResult Function(_PayProfileViewEvent value)
        payProfileViewRequested,
    required TResult Function(_PayBoostResponseRequestedEvent value)
        payBoostResponseRequested,
  }) {
    return payBoostResponseRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult? Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult? Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
  }) {
    return payBoostResponseRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProlongSubscriptionRequestedEvent value)?
        prolongSubscriptionRequested,
    TResult Function(_PayProfileViewEvent value)? payProfileViewRequested,
    TResult Function(_PayBoostResponseRequestedEvent value)?
        payBoostResponseRequested,
    required TResult orElse(),
  }) {
    if (payBoostResponseRequested != null) {
      return payBoostResponseRequested(this);
    }
    return orElse();
  }
}

abstract class _PayBoostResponseRequestedEvent implements PaymentEvent {
  const factory _PayBoostResponseRequestedEvent({required final int idChat}) =
      _$PayBoostResponseRequestedEventImpl;

  int get idChat;

  /// Create a copy of PaymentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayBoostResponseRequestedEventImplCopyWith<
          _$PayBoostResponseRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DateTime subscriptionUntil) successSubscription,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DateTime subscriptionUntil)? successSubscription,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DateTime subscriptionUntil)? successSubscription,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSubscriptionState value)
        successSubscription,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSubscriptionState value)? successSubscription,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSubscriptionState value)? successSubscription,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentState
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
    extends _$PaymentStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'PaymentState.initial()';
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
    required TResult Function() success,
    required TResult Function(DateTime subscriptionUntil) successSubscription,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DateTime subscriptionUntil)? successSubscription,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DateTime subscriptionUntil)? successSubscription,
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
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSubscriptionState value)
        successSubscription,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSubscriptionState value)? successSubscription,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSubscriptionState value)? successSubscription,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements PaymentState {
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
    extends _$PaymentStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'PaymentState.loading()';
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
    required TResult Function() success,
    required TResult Function(DateTime subscriptionUntil) successSubscription,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DateTime subscriptionUntil)? successSubscription,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DateTime subscriptionUntil)? successSubscription,
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
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSubscriptionState value)
        successSubscription,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSubscriptionState value)? successSubscription,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSubscriptionState value)? successSubscription,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements PaymentState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl();

  @override
  String toString() {
    return 'PaymentState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DateTime subscriptionUntil) successSubscription,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DateTime subscriptionUntil)? successSubscription,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DateTime subscriptionUntil)? successSubscription,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSubscriptionState value)
        successSubscription,
    required TResult Function(_ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSubscriptionState value)? successSubscription,
    TResult? Function(_ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSubscriptionState value)? successSubscription,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements PaymentState {
  const factory _SuccessState() = _$SuccessStateImpl;
}

/// @nodoc
abstract class _$$SuccessSubscriptionStateImplCopyWith<$Res> {
  factory _$$SuccessSubscriptionStateImplCopyWith(
          _$SuccessSubscriptionStateImpl value,
          $Res Function(_$SuccessSubscriptionStateImpl) then) =
      __$$SuccessSubscriptionStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime subscriptionUntil});
}

/// @nodoc
class __$$SuccessSubscriptionStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$SuccessSubscriptionStateImpl>
    implements _$$SuccessSubscriptionStateImplCopyWith<$Res> {
  __$$SuccessSubscriptionStateImplCopyWithImpl(
      _$SuccessSubscriptionStateImpl _value,
      $Res Function(_$SuccessSubscriptionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionUntil = null,
  }) {
    return _then(_$SuccessSubscriptionStateImpl(
      subscriptionUntil: null == subscriptionUntil
          ? _value.subscriptionUntil
          : subscriptionUntil // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$SuccessSubscriptionStateImpl implements _SuccessSubscriptionState {
  const _$SuccessSubscriptionStateImpl({required this.subscriptionUntil});

  @override
  final DateTime subscriptionUntil;

  @override
  String toString() {
    return 'PaymentState.successSubscription(subscriptionUntil: $subscriptionUntil)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSubscriptionStateImpl &&
            (identical(other.subscriptionUntil, subscriptionUntil) ||
                other.subscriptionUntil == subscriptionUntil));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionUntil);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSubscriptionStateImplCopyWith<_$SuccessSubscriptionStateImpl>
      get copyWith => __$$SuccessSubscriptionStateImplCopyWithImpl<
          _$SuccessSubscriptionStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(DateTime subscriptionUntil) successSubscription,
    required TResult Function() error,
  }) {
    return successSubscription(subscriptionUntil);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DateTime subscriptionUntil)? successSubscription,
    TResult? Function()? error,
  }) {
    return successSubscription?.call(subscriptionUntil);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DateTime subscriptionUntil)? successSubscription,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successSubscription != null) {
      return successSubscription(subscriptionUntil);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSubscriptionState value)
        successSubscription,
    required TResult Function(_ErrorState value) error,
  }) {
    return successSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSubscriptionState value)? successSubscription,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSubscriptionState value)? successSubscription,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successSubscription != null) {
      return successSubscription(this);
    }
    return orElse();
  }
}

abstract class _SuccessSubscriptionState implements PaymentState {
  const factory _SuccessSubscriptionState(
          {required final DateTime subscriptionUntil}) =
      _$SuccessSubscriptionStateImpl;

  DateTime get subscriptionUntil;

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSubscriptionStateImplCopyWith<_$SuccessSubscriptionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'PaymentState.error()';
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
    required TResult Function() success,
    required TResult Function(DateTime subscriptionUntil) successSubscription,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(DateTime subscriptionUntil)? successSubscription,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(DateTime subscriptionUntil)? successSubscription,
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
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSubscriptionState value)
        successSubscription,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSubscriptionState value)? successSubscription,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSubscriptionState value)? successSubscription,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements PaymentState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
