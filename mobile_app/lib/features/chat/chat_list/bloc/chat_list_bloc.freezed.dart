// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChatListRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListUpdateRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChatListRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChatListRequested,
    TResult Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult Function(SocketMessageModel newMessage)? chatListReadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatListRequestedEvent value)
        fetchChatListRequested,
    required TResult Function(_ChatListUpdateRequestedEvent value)
        chatListUpdateRequested,
    required TResult Function(_ChatListReadRequestedEvent value)
        chatListReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult? Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult? Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListEventCopyWith<$Res> {
  factory $ChatListEventCopyWith(
          ChatListEvent value, $Res Function(ChatListEvent) then) =
      _$ChatListEventCopyWithImpl<$Res, ChatListEvent>;
}

/// @nodoc
class _$ChatListEventCopyWithImpl<$Res, $Val extends ChatListEvent>
    implements $ChatListEventCopyWith<$Res> {
  _$ChatListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchChatListRequestedEventImplCopyWith<$Res> {
  factory _$$FetchChatListRequestedEventImplCopyWith(
          _$FetchChatListRequestedEventImpl value,
          $Res Function(_$FetchChatListRequestedEventImpl) then) =
      __$$FetchChatListRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchChatListRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$FetchChatListRequestedEventImpl>
    implements _$$FetchChatListRequestedEventImplCopyWith<$Res> {
  __$$FetchChatListRequestedEventImplCopyWithImpl(
      _$FetchChatListRequestedEventImpl _value,
      $Res Function(_$FetchChatListRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchChatListRequestedEventImpl
    implements _FetchChatListRequestedEvent {
  const _$FetchChatListRequestedEventImpl();

  @override
  String toString() {
    return 'ChatListEvent.fetchChatListRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchChatListRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChatListRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListUpdateRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListReadRequested,
  }) {
    return fetchChatListRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChatListRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListReadRequested,
  }) {
    return fetchChatListRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChatListRequested,
    TResult Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult Function(SocketMessageModel newMessage)? chatListReadRequested,
    required TResult orElse(),
  }) {
    if (fetchChatListRequested != null) {
      return fetchChatListRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatListRequestedEvent value)
        fetchChatListRequested,
    required TResult Function(_ChatListUpdateRequestedEvent value)
        chatListUpdateRequested,
    required TResult Function(_ChatListReadRequestedEvent value)
        chatListReadRequested,
  }) {
    return fetchChatListRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult? Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult? Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
  }) {
    return fetchChatListRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
    required TResult orElse(),
  }) {
    if (fetchChatListRequested != null) {
      return fetchChatListRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchChatListRequestedEvent implements ChatListEvent {
  const factory _FetchChatListRequestedEvent() =
      _$FetchChatListRequestedEventImpl;
}

/// @nodoc
abstract class _$$ChatListUpdateRequestedEventImplCopyWith<$Res> {
  factory _$$ChatListUpdateRequestedEventImplCopyWith(
          _$ChatListUpdateRequestedEventImpl value,
          $Res Function(_$ChatListUpdateRequestedEventImpl) then) =
      __$$ChatListUpdateRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocketMessageModel newMessage});
}

/// @nodoc
class __$$ChatListUpdateRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res,
        _$ChatListUpdateRequestedEventImpl>
    implements _$$ChatListUpdateRequestedEventImplCopyWith<$Res> {
  __$$ChatListUpdateRequestedEventImplCopyWithImpl(
      _$ChatListUpdateRequestedEventImpl _value,
      $Res Function(_$ChatListUpdateRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newMessage = null,
  }) {
    return _then(_$ChatListUpdateRequestedEventImpl(
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as SocketMessageModel,
    ));
  }
}

/// @nodoc

class _$ChatListUpdateRequestedEventImpl
    implements _ChatListUpdateRequestedEvent {
  const _$ChatListUpdateRequestedEventImpl({required this.newMessage});

  @override
  final SocketMessageModel newMessage;

  @override
  String toString() {
    return 'ChatListEvent.chatListUpdateRequested(newMessage: $newMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListUpdateRequestedEventImpl &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMessage);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListUpdateRequestedEventImplCopyWith<
          _$ChatListUpdateRequestedEventImpl>
      get copyWith => __$$ChatListUpdateRequestedEventImplCopyWithImpl<
          _$ChatListUpdateRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChatListRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListUpdateRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListReadRequested,
  }) {
    return chatListUpdateRequested(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChatListRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListReadRequested,
  }) {
    return chatListUpdateRequested?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChatListRequested,
    TResult Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult Function(SocketMessageModel newMessage)? chatListReadRequested,
    required TResult orElse(),
  }) {
    if (chatListUpdateRequested != null) {
      return chatListUpdateRequested(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatListRequestedEvent value)
        fetchChatListRequested,
    required TResult Function(_ChatListUpdateRequestedEvent value)
        chatListUpdateRequested,
    required TResult Function(_ChatListReadRequestedEvent value)
        chatListReadRequested,
  }) {
    return chatListUpdateRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult? Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult? Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
  }) {
    return chatListUpdateRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
    required TResult orElse(),
  }) {
    if (chatListUpdateRequested != null) {
      return chatListUpdateRequested(this);
    }
    return orElse();
  }
}

abstract class _ChatListUpdateRequestedEvent implements ChatListEvent {
  const factory _ChatListUpdateRequestedEvent(
          {required final SocketMessageModel newMessage}) =
      _$ChatListUpdateRequestedEventImpl;

  SocketMessageModel get newMessage;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatListUpdateRequestedEventImplCopyWith<
          _$ChatListUpdateRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatListReadRequestedEventImplCopyWith<$Res> {
  factory _$$ChatListReadRequestedEventImplCopyWith(
          _$ChatListReadRequestedEventImpl value,
          $Res Function(_$ChatListReadRequestedEventImpl) then) =
      __$$ChatListReadRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocketMessageModel newMessage});
}

/// @nodoc
class __$$ChatListReadRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatListEventCopyWithImpl<$Res, _$ChatListReadRequestedEventImpl>
    implements _$$ChatListReadRequestedEventImplCopyWith<$Res> {
  __$$ChatListReadRequestedEventImplCopyWithImpl(
      _$ChatListReadRequestedEventImpl _value,
      $Res Function(_$ChatListReadRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newMessage = null,
  }) {
    return _then(_$ChatListReadRequestedEventImpl(
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as SocketMessageModel,
    ));
  }
}

/// @nodoc

class _$ChatListReadRequestedEventImpl implements _ChatListReadRequestedEvent {
  const _$ChatListReadRequestedEventImpl({required this.newMessage});

  @override
  final SocketMessageModel newMessage;

  @override
  String toString() {
    return 'ChatListEvent.chatListReadRequested(newMessage: $newMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatListReadRequestedEventImpl &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMessage);

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatListReadRequestedEventImplCopyWith<_$ChatListReadRequestedEventImpl>
      get copyWith => __$$ChatListReadRequestedEventImplCopyWithImpl<
          _$ChatListReadRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchChatListRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListUpdateRequested,
    required TResult Function(SocketMessageModel newMessage)
        chatListReadRequested,
  }) {
    return chatListReadRequested(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchChatListRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult? Function(SocketMessageModel newMessage)? chatListReadRequested,
  }) {
    return chatListReadRequested?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchChatListRequested,
    TResult Function(SocketMessageModel newMessage)? chatListUpdateRequested,
    TResult Function(SocketMessageModel newMessage)? chatListReadRequested,
    required TResult orElse(),
  }) {
    if (chatListReadRequested != null) {
      return chatListReadRequested(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatListRequestedEvent value)
        fetchChatListRequested,
    required TResult Function(_ChatListUpdateRequestedEvent value)
        chatListUpdateRequested,
    required TResult Function(_ChatListReadRequestedEvent value)
        chatListReadRequested,
  }) {
    return chatListReadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult? Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult? Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
  }) {
    return chatListReadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatListRequestedEvent value)?
        fetchChatListRequested,
    TResult Function(_ChatListUpdateRequestedEvent value)?
        chatListUpdateRequested,
    TResult Function(_ChatListReadRequestedEvent value)? chatListReadRequested,
    required TResult orElse(),
  }) {
    if (chatListReadRequested != null) {
      return chatListReadRequested(this);
    }
    return orElse();
  }
}

abstract class _ChatListReadRequestedEvent implements ChatListEvent {
  const factory _ChatListReadRequestedEvent(
          {required final SocketMessageModel newMessage}) =
      _$ChatListReadRequestedEventImpl;

  SocketMessageModel get newMessage;

  /// Create a copy of ChatListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatListReadRequestedEventImplCopyWith<_$ChatListReadRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)
        success,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
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
abstract class $ChatListStateCopyWith<$Res> {
  factory $ChatListStateCopyWith(
          ChatListState value, $Res Function(ChatListState) then) =
      _$ChatListStateCopyWithImpl<$Res, ChatListState>;
}

/// @nodoc
class _$ChatListStateCopyWithImpl<$Res, $Val extends ChatListState>
    implements $ChatListStateCopyWith<$Res> {
  _$ChatListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatListState
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
    extends _$ChatListStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ChatListState.initial()';
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
    required TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)
        success,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
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

abstract class _InitialState implements ChatListState {
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
    extends _$ChatListStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ChatListState.loading()';
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
    required TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)
        success,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
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

abstract class _LoadingState implements ChatListState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatListModel> chats, ChatSupportListModel supportChat});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chats = null,
    Object? supportChat = null,
  }) {
    return _then(_$SuccessStateImpl(
      chats: null == chats
          ? _value._chats
          : chats // ignore: cast_nullable_to_non_nullable
              as List<ChatListModel>,
      supportChat: null == supportChat
          ? _value.supportChat
          : supportChat // ignore: cast_nullable_to_non_nullable
              as ChatSupportListModel,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(
      {required final List<ChatListModel> chats, required this.supportChat})
      : _chats = chats;

  final List<ChatListModel> _chats;
  @override
  List<ChatListModel> get chats {
    if (_chats is EqualUnmodifiableListView) return _chats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chats);
  }

  @override
  final ChatSupportListModel supportChat;

  @override
  String toString() {
    return 'ChatListState.success(chats: $chats, supportChat: $supportChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._chats, _chats) &&
            (identical(other.supportChat, supportChat) ||
                other.supportChat == supportChat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_chats), supportChat);

  /// Create a copy of ChatListState
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
    required TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)
        success,
    required TResult Function() error,
  }) {
    return success(chats, supportChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
    TResult? Function()? error,
  }) {
    return success?.call(chats, supportChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(chats, supportChat);
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

abstract class _SuccessState implements ChatListState {
  const factory _SuccessState(
      {required final List<ChatListModel> chats,
      required final ChatSupportListModel supportChat}) = _$SuccessStateImpl;

  List<ChatListModel> get chats;
  ChatSupportListModel get supportChat;

  /// Create a copy of ChatListState
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
    extends _$ChatListStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'ChatListState.error()';
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
    required TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)
        success,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChatListModel> chats, ChatSupportListModel supportChat)?
        success,
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

abstract class _ErrorState implements ChatListState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
