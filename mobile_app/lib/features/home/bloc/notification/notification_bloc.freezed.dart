// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationRequested,
    required TResult Function(List<int> ids)
        markAsReadNotificationRequestedEvent,
    required TResult Function(NotificationModel notification)
        updateNotificationRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationRequested,
    TResult? Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult? Function(NotificationModel notification)?
        updateNotificationRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationRequested,
    TResult Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult Function(NotificationModel notification)?
        updateNotificationRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotificationRequestedEvent value)
        fetchNotificationRequested,
    required TResult Function(_MarkAsReadNotificationRequestedEvent value)
        markAsReadNotificationRequestedEvent,
    required TResult Function(_UpdateNotificationRequestedEvent value)
        updateNotificationRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult? Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult? Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchNotificationRequestedEventImplCopyWith<$Res> {
  factory _$$FetchNotificationRequestedEventImplCopyWith(
          _$FetchNotificationRequestedEventImpl value,
          $Res Function(_$FetchNotificationRequestedEventImpl) then) =
      __$$FetchNotificationRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchNotificationRequestedEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$FetchNotificationRequestedEventImpl>
    implements _$$FetchNotificationRequestedEventImplCopyWith<$Res> {
  __$$FetchNotificationRequestedEventImplCopyWithImpl(
      _$FetchNotificationRequestedEventImpl _value,
      $Res Function(_$FetchNotificationRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchNotificationRequestedEventImpl
    implements _FetchNotificationRequestedEvent {
  const _$FetchNotificationRequestedEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.fetchNotificationRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchNotificationRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationRequested,
    required TResult Function(List<int> ids)
        markAsReadNotificationRequestedEvent,
    required TResult Function(NotificationModel notification)
        updateNotificationRequested,
  }) {
    return fetchNotificationRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationRequested,
    TResult? Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult? Function(NotificationModel notification)?
        updateNotificationRequested,
  }) {
    return fetchNotificationRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationRequested,
    TResult Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult Function(NotificationModel notification)?
        updateNotificationRequested,
    required TResult orElse(),
  }) {
    if (fetchNotificationRequested != null) {
      return fetchNotificationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotificationRequestedEvent value)
        fetchNotificationRequested,
    required TResult Function(_MarkAsReadNotificationRequestedEvent value)
        markAsReadNotificationRequestedEvent,
    required TResult Function(_UpdateNotificationRequestedEvent value)
        updateNotificationRequested,
  }) {
    return fetchNotificationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult? Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult? Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
  }) {
    return fetchNotificationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
    required TResult orElse(),
  }) {
    if (fetchNotificationRequested != null) {
      return fetchNotificationRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchNotificationRequestedEvent implements NotificationEvent {
  const factory _FetchNotificationRequestedEvent() =
      _$FetchNotificationRequestedEventImpl;
}

/// @nodoc
abstract class _$$MarkAsReadNotificationRequestedEventImplCopyWith<$Res> {
  factory _$$MarkAsReadNotificationRequestedEventImplCopyWith(
          _$MarkAsReadNotificationRequestedEventImpl value,
          $Res Function(_$MarkAsReadNotificationRequestedEventImpl) then) =
      __$$MarkAsReadNotificationRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$MarkAsReadNotificationRequestedEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$MarkAsReadNotificationRequestedEventImpl>
    implements _$$MarkAsReadNotificationRequestedEventImplCopyWith<$Res> {
  __$$MarkAsReadNotificationRequestedEventImplCopyWithImpl(
      _$MarkAsReadNotificationRequestedEventImpl _value,
      $Res Function(_$MarkAsReadNotificationRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$MarkAsReadNotificationRequestedEventImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$MarkAsReadNotificationRequestedEventImpl
    implements _MarkAsReadNotificationRequestedEvent {
  const _$MarkAsReadNotificationRequestedEventImpl(
      {required final List<int> ids})
      : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'NotificationEvent.markAsReadNotificationRequestedEvent(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadNotificationRequestedEventImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadNotificationRequestedEventImplCopyWith<
          _$MarkAsReadNotificationRequestedEventImpl>
      get copyWith => __$$MarkAsReadNotificationRequestedEventImplCopyWithImpl<
          _$MarkAsReadNotificationRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationRequested,
    required TResult Function(List<int> ids)
        markAsReadNotificationRequestedEvent,
    required TResult Function(NotificationModel notification)
        updateNotificationRequested,
  }) {
    return markAsReadNotificationRequestedEvent(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationRequested,
    TResult? Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult? Function(NotificationModel notification)?
        updateNotificationRequested,
  }) {
    return markAsReadNotificationRequestedEvent?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationRequested,
    TResult Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult Function(NotificationModel notification)?
        updateNotificationRequested,
    required TResult orElse(),
  }) {
    if (markAsReadNotificationRequestedEvent != null) {
      return markAsReadNotificationRequestedEvent(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotificationRequestedEvent value)
        fetchNotificationRequested,
    required TResult Function(_MarkAsReadNotificationRequestedEvent value)
        markAsReadNotificationRequestedEvent,
    required TResult Function(_UpdateNotificationRequestedEvent value)
        updateNotificationRequested,
  }) {
    return markAsReadNotificationRequestedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult? Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult? Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
  }) {
    return markAsReadNotificationRequestedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
    required TResult orElse(),
  }) {
    if (markAsReadNotificationRequestedEvent != null) {
      return markAsReadNotificationRequestedEvent(this);
    }
    return orElse();
  }
}

abstract class _MarkAsReadNotificationRequestedEvent
    implements NotificationEvent {
  const factory _MarkAsReadNotificationRequestedEvent(
          {required final List<int> ids}) =
      _$MarkAsReadNotificationRequestedEventImpl;

  List<int> get ids;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAsReadNotificationRequestedEventImplCopyWith<
          _$MarkAsReadNotificationRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateNotificationRequestedEventImplCopyWith<$Res> {
  factory _$$UpdateNotificationRequestedEventImplCopyWith(
          _$UpdateNotificationRequestedEventImpl value,
          $Res Function(_$UpdateNotificationRequestedEventImpl) then) =
      __$$UpdateNotificationRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NotificationModel notification});
}

/// @nodoc
class __$$UpdateNotificationRequestedEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$UpdateNotificationRequestedEventImpl>
    implements _$$UpdateNotificationRequestedEventImplCopyWith<$Res> {
  __$$UpdateNotificationRequestedEventImplCopyWithImpl(
      _$UpdateNotificationRequestedEventImpl _value,
      $Res Function(_$UpdateNotificationRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notification = null,
  }) {
    return _then(_$UpdateNotificationRequestedEventImpl(
      notification: null == notification
          ? _value.notification
          : notification // ignore: cast_nullable_to_non_nullable
              as NotificationModel,
    ));
  }
}

/// @nodoc

class _$UpdateNotificationRequestedEventImpl
    implements _UpdateNotificationRequestedEvent {
  const _$UpdateNotificationRequestedEventImpl({required this.notification});

  @override
  final NotificationModel notification;

  @override
  String toString() {
    return 'NotificationEvent.updateNotificationRequested(notification: $notification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNotificationRequestedEventImpl &&
            (identical(other.notification, notification) ||
                other.notification == notification));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notification);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNotificationRequestedEventImplCopyWith<
          _$UpdateNotificationRequestedEventImpl>
      get copyWith => __$$UpdateNotificationRequestedEventImplCopyWithImpl<
          _$UpdateNotificationRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNotificationRequested,
    required TResult Function(List<int> ids)
        markAsReadNotificationRequestedEvent,
    required TResult Function(NotificationModel notification)
        updateNotificationRequested,
  }) {
    return updateNotificationRequested(notification);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchNotificationRequested,
    TResult? Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult? Function(NotificationModel notification)?
        updateNotificationRequested,
  }) {
    return updateNotificationRequested?.call(notification);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNotificationRequested,
    TResult Function(List<int> ids)? markAsReadNotificationRequestedEvent,
    TResult Function(NotificationModel notification)?
        updateNotificationRequested,
    required TResult orElse(),
  }) {
    if (updateNotificationRequested != null) {
      return updateNotificationRequested(notification);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNotificationRequestedEvent value)
        fetchNotificationRequested,
    required TResult Function(_MarkAsReadNotificationRequestedEvent value)
        markAsReadNotificationRequestedEvent,
    required TResult Function(_UpdateNotificationRequestedEvent value)
        updateNotificationRequested,
  }) {
    return updateNotificationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult? Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult? Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
  }) {
    return updateNotificationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNotificationRequestedEvent value)?
        fetchNotificationRequested,
    TResult Function(_MarkAsReadNotificationRequestedEvent value)?
        markAsReadNotificationRequestedEvent,
    TResult Function(_UpdateNotificationRequestedEvent value)?
        updateNotificationRequested,
    required TResult orElse(),
  }) {
    if (updateNotificationRequested != null) {
      return updateNotificationRequested(this);
    }
    return orElse();
  }
}

abstract class _UpdateNotificationRequestedEvent implements NotificationEvent {
  const factory _UpdateNotificationRequestedEvent(
          {required final NotificationModel notification}) =
      _$UpdateNotificationRequestedEventImpl;

  NotificationModel get notification;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNotificationRequestedEventImplCopyWith<
          _$UpdateNotificationRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NotificationModel> notifications) success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationModel> notifications)? success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationModel> notifications)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
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
    extends _$NotificationStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'NotificationState.initial()';
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
    required TResult Function(List<NotificationModel> notifications) success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationModel> notifications)? success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationModel> notifications)? success,
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
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements NotificationState {
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
    extends _$NotificationStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'NotificationState.loading()';
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
    required TResult Function(List<NotificationModel> notifications) success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationModel> notifications)? success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationModel> notifications)? success,
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
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements NotificationState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$SuccessStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(
      {required final List<NotificationModel> notifications})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationState.success(notifications: $notifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  /// Create a copy of NotificationState
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
    required TResult Function(List<NotificationModel> notifications) success,
    required TResult Function() error,
  }) {
    return success(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationModel> notifications)? success,
    TResult? Function()? error,
  }) {
    return success?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationModel> notifications)? success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
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
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements NotificationState {
  const factory _SuccessState(
          {required final List<NotificationModel> notifications}) =
      _$SuccessStateImpl;

  List<NotificationModel> get notifications;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
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
    extends _$NotificationStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'NotificationState.error()';
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
    required TResult Function(List<NotificationModel> notifications) success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NotificationModel> notifications)? success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NotificationModel> notifications)? success,
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
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements NotificationState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
