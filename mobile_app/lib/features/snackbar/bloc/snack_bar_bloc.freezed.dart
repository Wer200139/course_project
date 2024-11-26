// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snack_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnackBarEvent {
  SnackBarModel get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnackBarModel model) emitRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnackBarModel model)? emitRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnackBarModel model)? emitRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitRequestedEvent value) emitRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmitRequestedEvent value)? emitRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitRequestedEvent value)? emitRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SnackBarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnackBarEventCopyWith<SnackBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackBarEventCopyWith<$Res> {
  factory $SnackBarEventCopyWith(
          SnackBarEvent value, $Res Function(SnackBarEvent) then) =
      _$SnackBarEventCopyWithImpl<$Res, SnackBarEvent>;
  @useResult
  $Res call({SnackBarModel model});
}

/// @nodoc
class _$SnackBarEventCopyWithImpl<$Res, $Val extends SnackBarEvent>
    implements $SnackBarEventCopyWith<$Res> {
  _$SnackBarEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackBarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SnackBarModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmitRequestedEventImplCopyWith<$Res>
    implements $SnackBarEventCopyWith<$Res> {
  factory _$$EmitRequestedEventImplCopyWith(_$EmitRequestedEventImpl value,
          $Res Function(_$EmitRequestedEventImpl) then) =
      __$$EmitRequestedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnackBarModel model});
}

/// @nodoc
class __$$EmitRequestedEventImplCopyWithImpl<$Res>
    extends _$SnackBarEventCopyWithImpl<$Res, _$EmitRequestedEventImpl>
    implements _$$EmitRequestedEventImplCopyWith<$Res> {
  __$$EmitRequestedEventImplCopyWithImpl(_$EmitRequestedEventImpl _value,
      $Res Function(_$EmitRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$EmitRequestedEventImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as SnackBarModel,
    ));
  }
}

/// @nodoc

class _$EmitRequestedEventImpl implements _EmitRequestedEvent {
  const _$EmitRequestedEventImpl({required this.model});

  @override
  final SnackBarModel model;

  @override
  String toString() {
    return 'SnackBarEvent.emitRequested(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmitRequestedEventImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  /// Create a copy of SnackBarEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmitRequestedEventImplCopyWith<_$EmitRequestedEventImpl> get copyWith =>
      __$$EmitRequestedEventImplCopyWithImpl<_$EmitRequestedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SnackBarModel model) emitRequested,
  }) {
    return emitRequested(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SnackBarModel model)? emitRequested,
  }) {
    return emitRequested?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SnackBarModel model)? emitRequested,
    required TResult orElse(),
  }) {
    if (emitRequested != null) {
      return emitRequested(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmitRequestedEvent value) emitRequested,
  }) {
    return emitRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmitRequestedEvent value)? emitRequested,
  }) {
    return emitRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmitRequestedEvent value)? emitRequested,
    required TResult orElse(),
  }) {
    if (emitRequested != null) {
      return emitRequested(this);
    }
    return orElse();
  }
}

abstract class _EmitRequestedEvent implements SnackBarEvent {
  const factory _EmitRequestedEvent({required final SnackBarModel model}) =
      _$EmitRequestedEventImpl;

  @override
  SnackBarModel get model;

  /// Create a copy of SnackBarEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmitRequestedEventImplCopyWith<_$EmitRequestedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SnackBarState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnackBarStateCopyWith<$Res> {
  factory $SnackBarStateCopyWith(
          SnackBarState value, $Res Function(SnackBarState) then) =
      _$SnackBarStateCopyWithImpl<$Res, SnackBarState>;
}

/// @nodoc
class _$SnackBarStateCopyWithImpl<$Res, $Val extends SnackBarState>
    implements $SnackBarStateCopyWith<$Res> {
  _$SnackBarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnackBarState
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
    extends _$SnackBarStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'SnackBarState.initial()';
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
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
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
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
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
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
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
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
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

abstract class _InitialState implements SnackBarState {
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
    extends _$SnackBarStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'SnackBarState.loading()';
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
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
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
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
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
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
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
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
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

abstract class _LoadingState implements SnackBarState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$PushStateImplCopyWith<$Res> {
  factory _$$PushStateImplCopyWith(
          _$PushStateImpl value, $Res Function(_$PushStateImpl) then) =
      __$$PushStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$PushStateImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$PushStateImpl>
    implements _$$PushStateImplCopyWith<$Res> {
  __$$PushStateImplCopyWithImpl(
      _$PushStateImpl _value, $Res Function(_$PushStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$PushStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PushStateImpl implements _PushState {
  const _$PushStateImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SnackBarState.push(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushStateImplCopyWith<_$PushStateImpl> get copyWith =>
      __$$PushStateImplCopyWithImpl<_$PushStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return push(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return push?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class _PushState implements SnackBarState {
  const factory _PushState({required final String text}) = _$PushStateImpl;

  String get text;

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushStateImplCopyWith<_$PushStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InfoStateImplCopyWith<$Res> {
  factory _$$InfoStateImplCopyWith(
          _$InfoStateImpl value, $Res Function(_$InfoStateImpl) then) =
      __$$InfoStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$InfoStateImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$InfoStateImpl>
    implements _$$InfoStateImplCopyWith<$Res> {
  __$$InfoStateImplCopyWithImpl(
      _$InfoStateImpl _value, $Res Function(_$InfoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$InfoStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InfoStateImpl implements _InfoState {
  const _$InfoStateImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SnackBarState.info(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      __$$InfoStateImplCopyWithImpl<_$InfoStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return info(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return info?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class _InfoState implements SnackBarState {
  const factory _InfoState({required final String text}) = _$InfoStateImpl;

  String get text;

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoStateImplCopyWith<_$InfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WarningStateImplCopyWith<$Res> {
  factory _$$WarningStateImplCopyWith(
          _$WarningStateImpl value, $Res Function(_$WarningStateImpl) then) =
      __$$WarningStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$WarningStateImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$WarningStateImpl>
    implements _$$WarningStateImplCopyWith<$Res> {
  __$$WarningStateImplCopyWithImpl(
      _$WarningStateImpl _value, $Res Function(_$WarningStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$WarningStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WarningStateImpl implements _WarningState {
  const _$WarningStateImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SnackBarState.warning(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WarningStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WarningStateImplCopyWith<_$WarningStateImpl> get copyWith =>
      __$$WarningStateImplCopyWithImpl<_$WarningStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return warning(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return warning?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_ErrorState value) error,
  }) {
    return warning(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_ErrorState value)? error,
  }) {
    return warning?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
    TResult Function(_SuccessState value)? success,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (warning != null) {
      return warning(this);
    }
    return orElse();
  }
}

abstract class _WarningState implements SnackBarState {
  const factory _WarningState({required final String text}) =
      _$WarningStateImpl;

  String get text;

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WarningStateImplCopyWith<_$WarningStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SuccessStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SnackBarState.success(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of SnackBarState
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
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return success(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return success?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
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
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
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
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
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

abstract class _SuccessState implements SnackBarState {
  const factory _SuccessState({required final String text}) =
      _$SuccessStateImpl;

  String get text;

  /// Create a copy of SnackBarState
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
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$SnackBarStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$ErrorStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'SnackBarState.error(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String text) push,
    required TResult Function(String text) info,
    required TResult Function(String text) warning,
    required TResult Function(String text) success,
    required TResult Function(String text) error,
  }) {
    return error(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String text)? push,
    TResult? Function(String text)? info,
    TResult? Function(String text)? warning,
    TResult? Function(String text)? success,
    TResult? Function(String text)? error,
  }) {
    return error?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String text)? push,
    TResult Function(String text)? info,
    TResult Function(String text)? warning,
    TResult Function(String text)? success,
    TResult Function(String text)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_PushState value) push,
    required TResult Function(_InfoState value) info,
    required TResult Function(_WarningState value) warning,
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
    TResult? Function(_PushState value)? push,
    TResult? Function(_InfoState value)? info,
    TResult? Function(_WarningState value)? warning,
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
    TResult Function(_PushState value)? push,
    TResult Function(_InfoState value)? info,
    TResult Function(_WarningState value)? warning,
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

abstract class _ErrorState implements SnackBarState {
  const factory _ErrorState({required final String text}) = _$ErrorStateImpl;

  String get text;

  /// Create a copy of SnackBarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
