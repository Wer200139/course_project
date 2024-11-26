// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AvatarEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAvatarEventRequested,
    required TResult Function(int id) saveAvatarEventRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAvatarEventRequested,
    TResult? Function(int id)? saveAvatarEventRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAvatarEventRequested,
    TResult Function(int id)? saveAvatarEventRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAvatarEventRequestedEvent value)
        fetchAvatarEventRequested,
    required TResult Function(_SaveAvatarEventRequestedEvent value)
        saveAvatarEventRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAvatarEventRequestedEvent value)?
        fetchAvatarEventRequested,
    TResult? Function(_SaveAvatarEventRequestedEvent value)?
        saveAvatarEventRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAvatarEventRequestedEvent value)?
        fetchAvatarEventRequested,
    TResult Function(_SaveAvatarEventRequestedEvent value)?
        saveAvatarEventRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarEventCopyWith<$Res> {
  factory $AvatarEventCopyWith(
          AvatarEvent value, $Res Function(AvatarEvent) then) =
      _$AvatarEventCopyWithImpl<$Res, AvatarEvent>;
}

/// @nodoc
class _$AvatarEventCopyWithImpl<$Res, $Val extends AvatarEvent>
    implements $AvatarEventCopyWith<$Res> {
  _$AvatarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchAvatarEventRequestedEventImplCopyWith<$Res> {
  factory _$$FetchAvatarEventRequestedEventImplCopyWith(
          _$FetchAvatarEventRequestedEventImpl value,
          $Res Function(_$FetchAvatarEventRequestedEventImpl) then) =
      __$$FetchAvatarEventRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAvatarEventRequestedEventImplCopyWithImpl<$Res>
    extends _$AvatarEventCopyWithImpl<$Res,
        _$FetchAvatarEventRequestedEventImpl>
    implements _$$FetchAvatarEventRequestedEventImplCopyWith<$Res> {
  __$$FetchAvatarEventRequestedEventImplCopyWithImpl(
      _$FetchAvatarEventRequestedEventImpl _value,
      $Res Function(_$FetchAvatarEventRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchAvatarEventRequestedEventImpl
    implements _FetchAvatarEventRequestedEvent {
  const _$FetchAvatarEventRequestedEventImpl();

  @override
  String toString() {
    return 'AvatarEvent.fetchAvatarEventRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAvatarEventRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAvatarEventRequested,
    required TResult Function(int id) saveAvatarEventRequested,
  }) {
    return fetchAvatarEventRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAvatarEventRequested,
    TResult? Function(int id)? saveAvatarEventRequested,
  }) {
    return fetchAvatarEventRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAvatarEventRequested,
    TResult Function(int id)? saveAvatarEventRequested,
    required TResult orElse(),
  }) {
    if (fetchAvatarEventRequested != null) {
      return fetchAvatarEventRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAvatarEventRequestedEvent value)
        fetchAvatarEventRequested,
    required TResult Function(_SaveAvatarEventRequestedEvent value)
        saveAvatarEventRequested,
  }) {
    return fetchAvatarEventRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAvatarEventRequestedEvent value)?
        fetchAvatarEventRequested,
    TResult? Function(_SaveAvatarEventRequestedEvent value)?
        saveAvatarEventRequested,
  }) {
    return fetchAvatarEventRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAvatarEventRequestedEvent value)?
        fetchAvatarEventRequested,
    TResult Function(_SaveAvatarEventRequestedEvent value)?
        saveAvatarEventRequested,
    required TResult orElse(),
  }) {
    if (fetchAvatarEventRequested != null) {
      return fetchAvatarEventRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchAvatarEventRequestedEvent implements AvatarEvent {
  const factory _FetchAvatarEventRequestedEvent() =
      _$FetchAvatarEventRequestedEventImpl;
}

/// @nodoc
abstract class _$$SaveAvatarEventRequestedEventImplCopyWith<$Res> {
  factory _$$SaveAvatarEventRequestedEventImplCopyWith(
          _$SaveAvatarEventRequestedEventImpl value,
          $Res Function(_$SaveAvatarEventRequestedEventImpl) then) =
      __$$SaveAvatarEventRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SaveAvatarEventRequestedEventImplCopyWithImpl<$Res>
    extends _$AvatarEventCopyWithImpl<$Res, _$SaveAvatarEventRequestedEventImpl>
    implements _$$SaveAvatarEventRequestedEventImplCopyWith<$Res> {
  __$$SaveAvatarEventRequestedEventImplCopyWithImpl(
      _$SaveAvatarEventRequestedEventImpl _value,
      $Res Function(_$SaveAvatarEventRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SaveAvatarEventRequestedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SaveAvatarEventRequestedEventImpl
    implements _SaveAvatarEventRequestedEvent {
  const _$SaveAvatarEventRequestedEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'AvatarEvent.saveAvatarEventRequested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAvatarEventRequestedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of AvatarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAvatarEventRequestedEventImplCopyWith<
          _$SaveAvatarEventRequestedEventImpl>
      get copyWith => __$$SaveAvatarEventRequestedEventImplCopyWithImpl<
          _$SaveAvatarEventRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAvatarEventRequested,
    required TResult Function(int id) saveAvatarEventRequested,
  }) {
    return saveAvatarEventRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAvatarEventRequested,
    TResult? Function(int id)? saveAvatarEventRequested,
  }) {
    return saveAvatarEventRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAvatarEventRequested,
    TResult Function(int id)? saveAvatarEventRequested,
    required TResult orElse(),
  }) {
    if (saveAvatarEventRequested != null) {
      return saveAvatarEventRequested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAvatarEventRequestedEvent value)
        fetchAvatarEventRequested,
    required TResult Function(_SaveAvatarEventRequestedEvent value)
        saveAvatarEventRequested,
  }) {
    return saveAvatarEventRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAvatarEventRequestedEvent value)?
        fetchAvatarEventRequested,
    TResult? Function(_SaveAvatarEventRequestedEvent value)?
        saveAvatarEventRequested,
  }) {
    return saveAvatarEventRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAvatarEventRequestedEvent value)?
        fetchAvatarEventRequested,
    TResult Function(_SaveAvatarEventRequestedEvent value)?
        saveAvatarEventRequested,
    required TResult orElse(),
  }) {
    if (saveAvatarEventRequested != null) {
      return saveAvatarEventRequested(this);
    }
    return orElse();
  }
}

abstract class _SaveAvatarEventRequestedEvent implements AvatarEvent {
  const factory _SaveAvatarEventRequestedEvent({required final int id}) =
      _$SaveAvatarEventRequestedEventImpl;

  int get id;

  /// Create a copy of AvatarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveAvatarEventRequestedEventImplCopyWith<
          _$SaveAvatarEventRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AvatarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvatarModel> avatars) success,
    required TResult Function() successSave,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvatarModel> avatars)? success,
    TResult? Function()? successSave,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvatarModel> avatars)? success,
    TResult Function()? successSave,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSaveState value) successSave,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSaveState value)? successSave,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSaveState value)? successSave,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarStateCopyWith<$Res> {
  factory $AvatarStateCopyWith(
          AvatarState value, $Res Function(AvatarState) then) =
      _$AvatarStateCopyWithImpl<$Res, AvatarState>;
}

/// @nodoc
class _$AvatarStateCopyWithImpl<$Res, $Val extends AvatarState>
    implements $AvatarStateCopyWith<$Res> {
  _$AvatarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvatarState
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
    extends _$AvatarStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'AvatarState.initial()';
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
    required TResult Function(List<AvatarModel> avatars) success,
    required TResult Function() successSave,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvatarModel> avatars)? success,
    TResult? Function()? successSave,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvatarModel> avatars)? success,
    TResult Function()? successSave,
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
    required TResult Function(_SuccessSaveState value) successSave,
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
    TResult? Function(_SuccessSaveState value)? successSave,
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
    TResult Function(_SuccessSaveState value)? successSave,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AvatarState {
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
    extends _$AvatarStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'AvatarState.loading()';
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
    required TResult Function(List<AvatarModel> avatars) success,
    required TResult Function() successSave,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvatarModel> avatars)? success,
    TResult? Function()? successSave,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvatarModel> avatars)? success,
    TResult Function()? successSave,
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
    required TResult Function(_SuccessSaveState value) successSave,
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
    TResult? Function(_SuccessSaveState value)? successSave,
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
    TResult Function(_SuccessSaveState value)? successSave,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AvatarState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AvatarModel> avatars});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$AvatarStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatars = null,
  }) {
    return _then(_$SuccessStateImpl(
      avatars: null == avatars
          ? _value._avatars
          : avatars // ignore: cast_nullable_to_non_nullable
              as List<AvatarModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl({required final List<AvatarModel> avatars})
      : _avatars = avatars;

  final List<AvatarModel> _avatars;
  @override
  List<AvatarModel> get avatars {
    if (_avatars is EqualUnmodifiableListView) return _avatars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatars);
  }

  @override
  String toString() {
    return 'AvatarState.success(avatars: $avatars)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._avatars, _avatars));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_avatars));

  /// Create a copy of AvatarState
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
    required TResult Function(List<AvatarModel> avatars) success,
    required TResult Function() successSave,
    required TResult Function() error,
  }) {
    return success(avatars);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvatarModel> avatars)? success,
    TResult? Function()? successSave,
    TResult? Function()? error,
  }) {
    return success?.call(avatars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvatarModel> avatars)? success,
    TResult Function()? successSave,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(avatars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSaveState value) successSave,
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
    TResult? Function(_SuccessSaveState value)? successSave,
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
    TResult Function(_SuccessSaveState value)? successSave,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements AvatarState {
  const factory _SuccessState({required final List<AvatarModel> avatars}) =
      _$SuccessStateImpl;

  List<AvatarModel> get avatars;

  /// Create a copy of AvatarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSaveStateImplCopyWith<$Res> {
  factory _$$SuccessSaveStateImplCopyWith(_$SuccessSaveStateImpl value,
          $Res Function(_$SuccessSaveStateImpl) then) =
      __$$SuccessSaveStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessSaveStateImplCopyWithImpl<$Res>
    extends _$AvatarStateCopyWithImpl<$Res, _$SuccessSaveStateImpl>
    implements _$$SuccessSaveStateImplCopyWith<$Res> {
  __$$SuccessSaveStateImplCopyWithImpl(_$SuccessSaveStateImpl _value,
      $Res Function(_$SuccessSaveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessSaveStateImpl implements _SuccessSaveState {
  const _$SuccessSaveStateImpl();

  @override
  String toString() {
    return 'AvatarState.successSave()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessSaveStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<AvatarModel> avatars) success,
    required TResult Function() successSave,
    required TResult Function() error,
  }) {
    return successSave();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvatarModel> avatars)? success,
    TResult? Function()? successSave,
    TResult? Function()? error,
  }) {
    return successSave?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvatarModel> avatars)? success,
    TResult Function()? successSave,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successSave != null) {
      return successSave();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSaveState value) successSave,
    required TResult Function(_ErrorState value) error,
  }) {
    return successSave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSaveState value)? successSave,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successSave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSaveState value)? successSave,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successSave != null) {
      return successSave(this);
    }
    return orElse();
  }
}

abstract class _SuccessSaveState implements AvatarState {
  const factory _SuccessSaveState() = _$SuccessSaveStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$AvatarStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AvatarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'AvatarState.error()';
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
    required TResult Function(List<AvatarModel> avatars) success,
    required TResult Function() successSave,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<AvatarModel> avatars)? success,
    TResult? Function()? successSave,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<AvatarModel> avatars)? success,
    TResult Function()? successSave,
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
    required TResult Function(_SuccessSaveState value) successSave,
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
    TResult? Function(_SuccessSaveState value)? successSave,
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
    TResult Function(_SuccessSaveState value)? successSave,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements AvatarState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
