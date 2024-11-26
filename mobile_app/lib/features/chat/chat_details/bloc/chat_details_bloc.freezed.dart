// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailsEventCopyWith<$Res> {
  factory $ChatDetailsEventCopyWith(
          ChatDetailsEvent value, $Res Function(ChatDetailsEvent) then) =
      _$ChatDetailsEventCopyWithImpl<$Res, ChatDetailsEvent>;
}

/// @nodoc
class _$ChatDetailsEventCopyWithImpl<$Res, $Val extends ChatDetailsEvent>
    implements $ChatDetailsEventCopyWith<$Res> {
  _$ChatDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchChatDetailsRequestedEventImplCopyWith<$Res> {
  factory _$$FetchChatDetailsRequestedEventImplCopyWith(
          _$FetchChatDetailsRequestedEventImpl value,
          $Res Function(_$FetchChatDetailsRequestedEventImpl) then) =
      __$$FetchChatDetailsRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$FetchChatDetailsRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res,
        _$FetchChatDetailsRequestedEventImpl>
    implements _$$FetchChatDetailsRequestedEventImplCopyWith<$Res> {
  __$$FetchChatDetailsRequestedEventImplCopyWithImpl(
      _$FetchChatDetailsRequestedEventImpl _value,
      $Res Function(_$FetchChatDetailsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$FetchChatDetailsRequestedEventImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchChatDetailsRequestedEventImpl
    implements _FetchChatDetailsRequestedEvent {
  const _$FetchChatDetailsRequestedEventImpl({required this.chatId});

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatDetailsEvent.fetchChatDetailsRequested(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchChatDetailsRequestedEventImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchChatDetailsRequestedEventImplCopyWith<
          _$FetchChatDetailsRequestedEventImpl>
      get copyWith => __$$FetchChatDetailsRequestedEventImplCopyWithImpl<
          _$FetchChatDetailsRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return fetchChatDetailsRequested(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return fetchChatDetailsRequested?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (fetchChatDetailsRequested != null) {
      return fetchChatDetailsRequested(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return fetchChatDetailsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return fetchChatDetailsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (fetchChatDetailsRequested != null) {
      return fetchChatDetailsRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchChatDetailsRequestedEvent implements ChatDetailsEvent {
  const factory _FetchChatDetailsRequestedEvent({required final int chatId}) =
      _$FetchChatDetailsRequestedEventImpl;

  int get chatId;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchChatDetailsRequestedEventImplCopyWith<
          _$FetchChatDetailsRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchChatSupportDetailsRequestedEventImplCopyWith<$Res> {
  factory _$$FetchChatSupportDetailsRequestedEventImplCopyWith(
          _$FetchChatSupportDetailsRequestedEventImpl value,
          $Res Function(_$FetchChatSupportDetailsRequestedEventImpl) then) =
      __$$FetchChatSupportDetailsRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchChatSupportDetailsRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res,
        _$FetchChatSupportDetailsRequestedEventImpl>
    implements _$$FetchChatSupportDetailsRequestedEventImplCopyWith<$Res> {
  __$$FetchChatSupportDetailsRequestedEventImplCopyWithImpl(
      _$FetchChatSupportDetailsRequestedEventImpl _value,
      $Res Function(_$FetchChatSupportDetailsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchChatSupportDetailsRequestedEventImpl
    implements _FetchChatSupportDetailsRequestedEvent {
  const _$FetchChatSupportDetailsRequestedEventImpl();

  @override
  String toString() {
    return 'ChatDetailsEvent.fetchChatSupportDetailsRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchChatSupportDetailsRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return fetchChatSupportDetailsRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return fetchChatSupportDetailsRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (fetchChatSupportDetailsRequested != null) {
      return fetchChatSupportDetailsRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return fetchChatSupportDetailsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return fetchChatSupportDetailsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (fetchChatSupportDetailsRequested != null) {
      return fetchChatSupportDetailsRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchChatSupportDetailsRequestedEvent
    implements ChatDetailsEvent {
  const factory _FetchChatSupportDetailsRequestedEvent() =
      _$FetchChatSupportDetailsRequestedEventImpl;
}

/// @nodoc
abstract class _$$AddEventCalendarEventImplCopyWith<$Res> {
  factory _$$AddEventCalendarEventImplCopyWith(
          _$AddEventCalendarEventImpl value,
          $Res Function(_$AddEventCalendarEventImpl) then) =
      __$$AddEventCalendarEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Event calendarEvent});
}

/// @nodoc
class __$$AddEventCalendarEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res, _$AddEventCalendarEventImpl>
    implements _$$AddEventCalendarEventImplCopyWith<$Res> {
  __$$AddEventCalendarEventImplCopyWithImpl(_$AddEventCalendarEventImpl _value,
      $Res Function(_$AddEventCalendarEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calendarEvent = null,
  }) {
    return _then(_$AddEventCalendarEventImpl(
      calendarEvent: null == calendarEvent
          ? _value.calendarEvent
          : calendarEvent // ignore: cast_nullable_to_non_nullable
              as Event,
    ));
  }
}

/// @nodoc

class _$AddEventCalendarEventImpl implements _AddEventCalendarEvent {
  const _$AddEventCalendarEventImpl({required this.calendarEvent});

  @override
  final Event calendarEvent;

  @override
  String toString() {
    return 'ChatDetailsEvent.addEventCalendar(calendarEvent: $calendarEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEventCalendarEventImpl &&
            (identical(other.calendarEvent, calendarEvent) ||
                other.calendarEvent == calendarEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, calendarEvent);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEventCalendarEventImplCopyWith<_$AddEventCalendarEventImpl>
      get copyWith => __$$AddEventCalendarEventImplCopyWithImpl<
          _$AddEventCalendarEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return addEventCalendar(calendarEvent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return addEventCalendar?.call(calendarEvent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (addEventCalendar != null) {
      return addEventCalendar(calendarEvent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return addEventCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return addEventCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (addEventCalendar != null) {
      return addEventCalendar(this);
    }
    return orElse();
  }
}

abstract class _AddEventCalendarEvent implements ChatDetailsEvent {
  const factory _AddEventCalendarEvent({required final Event calendarEvent}) =
      _$AddEventCalendarEventImpl;

  Event get calendarEvent;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddEventCalendarEventImplCopyWith<_$AddEventCalendarEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatUpdateRequestedEventImplCopyWith<$Res> {
  factory _$$ChatUpdateRequestedEventImplCopyWith(
          _$ChatUpdateRequestedEventImpl value,
          $Res Function(_$ChatUpdateRequestedEventImpl) then) =
      __$$ChatUpdateRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SocketMessageModel newMessage});
}

/// @nodoc
class __$$ChatUpdateRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res, _$ChatUpdateRequestedEventImpl>
    implements _$$ChatUpdateRequestedEventImplCopyWith<$Res> {
  __$$ChatUpdateRequestedEventImplCopyWithImpl(
      _$ChatUpdateRequestedEventImpl _value,
      $Res Function(_$ChatUpdateRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newMessage = null,
  }) {
    return _then(_$ChatUpdateRequestedEventImpl(
      newMessage: null == newMessage
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as SocketMessageModel,
    ));
  }
}

/// @nodoc

class _$ChatUpdateRequestedEventImpl implements _ChatUpdateRequestedEvent {
  const _$ChatUpdateRequestedEventImpl({required this.newMessage});

  @override
  final SocketMessageModel newMessage;

  @override
  String toString() {
    return 'ChatDetailsEvent.updateChatRequested(newMessage: $newMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatUpdateRequestedEventImpl &&
            (identical(other.newMessage, newMessage) ||
                other.newMessage == newMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newMessage);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatUpdateRequestedEventImplCopyWith<_$ChatUpdateRequestedEventImpl>
      get copyWith => __$$ChatUpdateRequestedEventImplCopyWithImpl<
          _$ChatUpdateRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return updateChatRequested(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return updateChatRequested?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (updateChatRequested != null) {
      return updateChatRequested(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return updateChatRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return updateChatRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (updateChatRequested != null) {
      return updateChatRequested(this);
    }
    return orElse();
  }
}

abstract class _ChatUpdateRequestedEvent implements ChatDetailsEvent {
  const factory _ChatUpdateRequestedEvent(
          {required final SocketMessageModel newMessage}) =
      _$ChatUpdateRequestedEventImpl;

  SocketMessageModel get newMessage;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatUpdateRequestedEventImplCopyWith<_$ChatUpdateRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptChattingRequestedEventImplCopyWith<$Res> {
  factory _$$AcceptChattingRequestedEventImplCopyWith(
          _$AcceptChattingRequestedEventImpl value,
          $Res Function(_$AcceptChattingRequestedEventImpl) then) =
      __$$AcceptChattingRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId, TaskModel? searchRequest});
}

/// @nodoc
class __$$AcceptChattingRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res,
        _$AcceptChattingRequestedEventImpl>
    implements _$$AcceptChattingRequestedEventImplCopyWith<$Res> {
  __$$AcceptChattingRequestedEventImplCopyWithImpl(
      _$AcceptChattingRequestedEventImpl _value,
      $Res Function(_$AcceptChattingRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? searchRequest = freezed,
  }) {
    return _then(_$AcceptChattingRequestedEventImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      searchRequest: freezed == searchRequest
          ? _value.searchRequest
          : searchRequest // ignore: cast_nullable_to_non_nullable
              as TaskModel?,
    ));
  }
}

/// @nodoc

class _$AcceptChattingRequestedEventImpl
    implements _AcceptChattingRequestedEvent {
  const _$AcceptChattingRequestedEventImpl(
      {required this.chatId, this.searchRequest});

  @override
  final int chatId;
  @override
  final TaskModel? searchRequest;

  @override
  String toString() {
    return 'ChatDetailsEvent.acceptChattingRequested(chatId: $chatId, searchRequest: $searchRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptChattingRequestedEventImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.searchRequest, searchRequest) ||
                other.searchRequest == searchRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, searchRequest);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptChattingRequestedEventImplCopyWith<
          _$AcceptChattingRequestedEventImpl>
      get copyWith => __$$AcceptChattingRequestedEventImplCopyWithImpl<
          _$AcceptChattingRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return acceptChattingRequested(chatId, searchRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return acceptChattingRequested?.call(chatId, searchRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (acceptChattingRequested != null) {
      return acceptChattingRequested(chatId, searchRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return acceptChattingRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return acceptChattingRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (acceptChattingRequested != null) {
      return acceptChattingRequested(this);
    }
    return orElse();
  }
}

abstract class _AcceptChattingRequestedEvent implements ChatDetailsEvent {
  const factory _AcceptChattingRequestedEvent(
      {required final int chatId,
      final TaskModel? searchRequest}) = _$AcceptChattingRequestedEventImpl;

  int get chatId;
  TaskModel? get searchRequest;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptChattingRequestedEventImplCopyWith<
          _$AcceptChattingRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FinishChattingRequestedEventImplCopyWith<$Res> {
  factory _$$FinishChattingRequestedEventImplCopyWith(
          _$FinishChattingRequestedEventImpl value,
          $Res Function(_$FinishChattingRequestedEventImpl) then) =
      __$$FinishChattingRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId, String text, double rating});
}

/// @nodoc
class __$$FinishChattingRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res,
        _$FinishChattingRequestedEventImpl>
    implements _$$FinishChattingRequestedEventImplCopyWith<$Res> {
  __$$FinishChattingRequestedEventImplCopyWithImpl(
      _$FinishChattingRequestedEventImpl _value,
      $Res Function(_$FinishChattingRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? text = null,
    Object? rating = null,
  }) {
    return _then(_$FinishChattingRequestedEventImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FinishChattingRequestedEventImpl
    implements _FinishChattingRequestedEvent {
  const _$FinishChattingRequestedEventImpl(
      {required this.chatId, required this.text, required this.rating});

  @override
  final int chatId;
  @override
  final String text;
  @override
  final double rating;

  @override
  String toString() {
    return 'ChatDetailsEvent.finishChattingRequested(chatId: $chatId, text: $text, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinishChattingRequestedEventImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, text, rating);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinishChattingRequestedEventImplCopyWith<
          _$FinishChattingRequestedEventImpl>
      get copyWith => __$$FinishChattingRequestedEventImplCopyWithImpl<
          _$FinishChattingRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return finishChattingRequested(chatId, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return finishChattingRequested?.call(chatId, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (finishChattingRequested != null) {
      return finishChattingRequested(chatId, text, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return finishChattingRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return finishChattingRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (finishChattingRequested != null) {
      return finishChattingRequested(this);
    }
    return orElse();
  }
}

abstract class _FinishChattingRequestedEvent implements ChatDetailsEvent {
  const factory _FinishChattingRequestedEvent(
      {required final int chatId,
      required final String text,
      required final double rating}) = _$FinishChattingRequestedEventImpl;

  int get chatId;
  String get text;
  double get rating;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinishChattingRequestedEventImplCopyWith<
          _$FinishChattingRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeclineRequestedEventImplCopyWith<$Res> {
  factory _$$DeclineRequestedEventImplCopyWith(
          _$DeclineRequestedEventImpl value,
          $Res Function(_$DeclineRequestedEventImpl) then) =
      __$$DeclineRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$DeclineRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res, _$DeclineRequestedEventImpl>
    implements _$$DeclineRequestedEventImplCopyWith<$Res> {
  __$$DeclineRequestedEventImplCopyWithImpl(_$DeclineRequestedEventImpl _value,
      $Res Function(_$DeclineRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$DeclineRequestedEventImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeclineRequestedEventImpl implements _DeclineRequestedEvent {
  const _$DeclineRequestedEventImpl({required this.chatId});

  @override
  final int chatId;

  @override
  String toString() {
    return 'ChatDetailsEvent.declineRequested(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeclineRequestedEventImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeclineRequestedEventImplCopyWith<_$DeclineRequestedEventImpl>
      get copyWith => __$$DeclineRequestedEventImplCopyWithImpl<
          _$DeclineRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return declineRequested(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return declineRequested?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (declineRequested != null) {
      return declineRequested(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return declineRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return declineRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (declineRequested != null) {
      return declineRequested(this);
    }
    return orElse();
  }
}

abstract class _DeclineRequestedEvent implements ChatDetailsEvent {
  const factory _DeclineRequestedEvent({required final int chatId}) =
      _$DeclineRequestedEventImpl;

  int get chatId;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeclineRequestedEventImplCopyWith<_$DeclineRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendReviewRequestedEventImplCopyWith<$Res> {
  factory _$$SendReviewRequestedEventImplCopyWith(
          _$SendReviewRequestedEventImpl value,
          $Res Function(_$SendReviewRequestedEventImpl) then) =
      __$$SendReviewRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId, String text, double rating});
}

/// @nodoc
class __$$SendReviewRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res, _$SendReviewRequestedEventImpl>
    implements _$$SendReviewRequestedEventImplCopyWith<$Res> {
  __$$SendReviewRequestedEventImplCopyWithImpl(
      _$SendReviewRequestedEventImpl _value,
      $Res Function(_$SendReviewRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? text = null,
    Object? rating = null,
  }) {
    return _then(_$SendReviewRequestedEventImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SendReviewRequestedEventImpl implements _SendReviewRequestedEvent {
  const _$SendReviewRequestedEventImpl(
      {required this.chatId, required this.text, required this.rating});

  @override
  final int chatId;
  @override
  final String text;
  @override
  final double rating;

  @override
  String toString() {
    return 'ChatDetailsEvent.sendReview(chatId: $chatId, text: $text, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendReviewRequestedEventImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, text, rating);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendReviewRequestedEventImplCopyWith<_$SendReviewRequestedEventImpl>
      get copyWith => __$$SendReviewRequestedEventImplCopyWithImpl<
          _$SendReviewRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return sendReview(chatId, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return sendReview?.call(chatId, text, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(chatId, text, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return sendReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return sendReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(this);
    }
    return orElse();
  }
}

abstract class _SendReviewRequestedEvent implements ChatDetailsEvent {
  const factory _SendReviewRequestedEvent(
      {required final int chatId,
      required final String text,
      required final double rating}) = _$SendReviewRequestedEventImpl;

  int get chatId;
  String get text;
  double get rating;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendReviewRequestedEventImplCopyWith<_$SendReviewRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarkMessageAsReadRequestedEventImplCopyWith<$Res> {
  factory _$$MarkMessageAsReadRequestedEventImplCopyWith(
          _$MarkMessageAsReadRequestedEventImpl value,
          $Res Function(_$MarkMessageAsReadRequestedEventImpl) then) =
      __$$MarkMessageAsReadRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId, ChatListModel previousChat});
}

/// @nodoc
class __$$MarkMessageAsReadRequestedEventImplCopyWithImpl<$Res>
    extends _$ChatDetailsEventCopyWithImpl<$Res,
        _$MarkMessageAsReadRequestedEventImpl>
    implements _$$MarkMessageAsReadRequestedEventImplCopyWith<$Res> {
  __$$MarkMessageAsReadRequestedEventImplCopyWithImpl(
      _$MarkMessageAsReadRequestedEventImpl _value,
      $Res Function(_$MarkMessageAsReadRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
    Object? previousChat = null,
  }) {
    return _then(_$MarkMessageAsReadRequestedEventImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
      previousChat: null == previousChat
          ? _value.previousChat
          : previousChat // ignore: cast_nullable_to_non_nullable
              as ChatListModel,
    ));
  }
}

/// @nodoc

class _$MarkMessageAsReadRequestedEventImpl
    implements _MarkMessageAsReadRequestedEvent {
  const _$MarkMessageAsReadRequestedEventImpl(
      {required this.chatId, required this.previousChat});

  @override
  final int chatId;
  @override
  final ChatListModel previousChat;

  @override
  String toString() {
    return 'ChatDetailsEvent.markMessageAsReadRequested(chatId: $chatId, previousChat: $previousChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkMessageAsReadRequestedEventImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.previousChat, previousChat) ||
                other.previousChat == previousChat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId, previousChat);

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkMessageAsReadRequestedEventImplCopyWith<
          _$MarkMessageAsReadRequestedEventImpl>
      get copyWith => __$$MarkMessageAsReadRequestedEventImplCopyWithImpl<
          _$MarkMessageAsReadRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int chatId) fetchChatDetailsRequested,
    required TResult Function() fetchChatSupportDetailsRequested,
    required TResult Function(Event calendarEvent) addEventCalendar,
    required TResult Function(SocketMessageModel newMessage)
        updateChatRequested,
    required TResult Function(int chatId, TaskModel? searchRequest)
        acceptChattingRequested,
    required TResult Function(int chatId, String text, double rating)
        finishChattingRequested,
    required TResult Function(int chatId) declineRequested,
    required TResult Function(int chatId, String text, double rating)
        sendReview,
    required TResult Function(int chatId, ChatListModel previousChat)
        markMessageAsReadRequested,
  }) {
    return markMessageAsReadRequested(chatId, previousChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int chatId)? fetchChatDetailsRequested,
    TResult? Function()? fetchChatSupportDetailsRequested,
    TResult? Function(Event calendarEvent)? addEventCalendar,
    TResult? Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult? Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult? Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult? Function(int chatId)? declineRequested,
    TResult? Function(int chatId, String text, double rating)? sendReview,
    TResult? Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
  }) {
    return markMessageAsReadRequested?.call(chatId, previousChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int chatId)? fetchChatDetailsRequested,
    TResult Function()? fetchChatSupportDetailsRequested,
    TResult Function(Event calendarEvent)? addEventCalendar,
    TResult Function(SocketMessageModel newMessage)? updateChatRequested,
    TResult Function(int chatId, TaskModel? searchRequest)?
        acceptChattingRequested,
    TResult Function(int chatId, String text, double rating)?
        finishChattingRequested,
    TResult Function(int chatId)? declineRequested,
    TResult Function(int chatId, String text, double rating)? sendReview,
    TResult Function(int chatId, ChatListModel previousChat)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (markMessageAsReadRequested != null) {
      return markMessageAsReadRequested(chatId, previousChat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchChatDetailsRequestedEvent value)
        fetchChatDetailsRequested,
    required TResult Function(_FetchChatSupportDetailsRequestedEvent value)
        fetchChatSupportDetailsRequested,
    required TResult Function(_AddEventCalendarEvent value) addEventCalendar,
    required TResult Function(_ChatUpdateRequestedEvent value)
        updateChatRequested,
    required TResult Function(_AcceptChattingRequestedEvent value)
        acceptChattingRequested,
    required TResult Function(_FinishChattingRequestedEvent value)
        finishChattingRequested,
    required TResult Function(_DeclineRequestedEvent value) declineRequested,
    required TResult Function(_SendReviewRequestedEvent value) sendReview,
    required TResult Function(_MarkMessageAsReadRequestedEvent value)
        markMessageAsReadRequested,
  }) {
    return markMessageAsReadRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult? Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult? Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult? Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult? Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult? Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult? Function(_DeclineRequestedEvent value)? declineRequested,
    TResult? Function(_SendReviewRequestedEvent value)? sendReview,
    TResult? Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
  }) {
    return markMessageAsReadRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchChatDetailsRequestedEvent value)?
        fetchChatDetailsRequested,
    TResult Function(_FetchChatSupportDetailsRequestedEvent value)?
        fetchChatSupportDetailsRequested,
    TResult Function(_AddEventCalendarEvent value)? addEventCalendar,
    TResult Function(_ChatUpdateRequestedEvent value)? updateChatRequested,
    TResult Function(_AcceptChattingRequestedEvent value)?
        acceptChattingRequested,
    TResult Function(_FinishChattingRequestedEvent value)?
        finishChattingRequested,
    TResult Function(_DeclineRequestedEvent value)? declineRequested,
    TResult Function(_SendReviewRequestedEvent value)? sendReview,
    TResult Function(_MarkMessageAsReadRequestedEvent value)?
        markMessageAsReadRequested,
    required TResult orElse(),
  }) {
    if (markMessageAsReadRequested != null) {
      return markMessageAsReadRequested(this);
    }
    return orElse();
  }
}

abstract class _MarkMessageAsReadRequestedEvent implements ChatDetailsEvent {
  const factory _MarkMessageAsReadRequestedEvent(
          {required final int chatId,
          required final ChatListModel previousChat}) =
      _$MarkMessageAsReadRequestedEventImpl;

  int get chatId;
  ChatListModel get previousChat;

  /// Create a copy of ChatDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkMessageAsReadRequestedEventImplCopyWith<
          _$MarkMessageAsReadRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailsStateCopyWith<$Res> {
  factory $ChatDetailsStateCopyWith(
          ChatDetailsState value, $Res Function(ChatDetailsState) then) =
      _$ChatDetailsStateCopyWithImpl<$Res, ChatDetailsState>;
}

/// @nodoc
class _$ChatDetailsStateCopyWithImpl<$Res, $Val extends ChatDetailsState>
    implements $ChatDetailsStateCopyWith<$Res> {
  _$ChatDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailsState
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
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.initial()';
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
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
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
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ChatDetailsState {
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
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.loading()';
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
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
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
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ChatDetailsState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChatListModel chat, List<MessageModel> messages});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? messages = null,
  }) {
    return _then(_$SuccessStateImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as ChatListModel,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(
      {required this.chat, required final List<MessageModel> messages})
      : _messages = messages;

  @override
  final ChatListModel chat;
  final List<MessageModel> _messages;
  @override
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatDetailsState.success(chat: $chat, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.chat, chat) || other.chat == chat) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, chat, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatDetailsState
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
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return success(chat, messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return success?.call(chat, messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(chat, messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements ChatDetailsState {
  const factory _SuccessState(
      {required final ChatListModel chat,
      required final List<MessageModel> messages}) = _$SuccessStateImpl;

  ChatListModel get chat;
  List<MessageModel> get messages;

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessFinishStateImplCopyWith<$Res> {
  factory _$$SuccessFinishStateImplCopyWith(_$SuccessFinishStateImpl value,
          $Res Function(_$SuccessFinishStateImpl) then) =
      __$$SuccessFinishStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessFinishStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$SuccessFinishStateImpl>
    implements _$$SuccessFinishStateImplCopyWith<$Res> {
  __$$SuccessFinishStateImplCopyWithImpl(_$SuccessFinishStateImpl _value,
      $Res Function(_$SuccessFinishStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessFinishStateImpl implements _SuccessFinishState {
  const _$SuccessFinishStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.successFinish()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessFinishStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return successFinish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return successFinish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) {
    if (successFinish != null) {
      return successFinish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return successFinish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return successFinish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (successFinish != null) {
      return successFinish(this);
    }
    return orElse();
  }
}

abstract class _SuccessFinishState implements ChatDetailsState {
  const factory _SuccessFinishState() = _$SuccessFinishStateImpl;
}

/// @nodoc
abstract class _$$SuccessDeclineStateImplCopyWith<$Res> {
  factory _$$SuccessDeclineStateImplCopyWith(_$SuccessDeclineStateImpl value,
          $Res Function(_$SuccessDeclineStateImpl) then) =
      __$$SuccessDeclineStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessDeclineStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$SuccessDeclineStateImpl>
    implements _$$SuccessDeclineStateImplCopyWith<$Res> {
  __$$SuccessDeclineStateImplCopyWithImpl(_$SuccessDeclineStateImpl _value,
      $Res Function(_$SuccessDeclineStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessDeclineStateImpl implements _SuccessDeclineState {
  const _$SuccessDeclineStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.successDecline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessDeclineStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return successDecline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return successDecline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) {
    if (successDecline != null) {
      return successDecline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return successDecline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return successDecline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (successDecline != null) {
      return successDecline(this);
    }
    return orElse();
  }
}

abstract class _SuccessDeclineState implements ChatDetailsState {
  const factory _SuccessDeclineState() = _$SuccessDeclineStateImpl;
}

/// @nodoc
abstract class _$$SuccessAcceptStateImplCopyWith<$Res> {
  factory _$$SuccessAcceptStateImplCopyWith(_$SuccessAcceptStateImpl value,
          $Res Function(_$SuccessAcceptStateImpl) then) =
      __$$SuccessAcceptStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessAcceptStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$SuccessAcceptStateImpl>
    implements _$$SuccessAcceptStateImplCopyWith<$Res> {
  __$$SuccessAcceptStateImplCopyWithImpl(_$SuccessAcceptStateImpl _value,
      $Res Function(_$SuccessAcceptStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessAcceptStateImpl implements _SuccessAcceptState {
  const _$SuccessAcceptStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.successAccept()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessAcceptStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return successAccept();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return successAccept?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) {
    if (successAccept != null) {
      return successAccept();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return successAccept(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return successAccept?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (successAccept != null) {
      return successAccept(this);
    }
    return orElse();
  }
}

abstract class _SuccessAcceptState implements ChatDetailsState {
  const factory _SuccessAcceptState() = _$SuccessAcceptStateImpl;
}

/// @nodoc
abstract class _$$SuccessSendStateImplCopyWith<$Res> {
  factory _$$SuccessSendStateImplCopyWith(_$SuccessSendStateImpl value,
          $Res Function(_$SuccessSendStateImpl) then) =
      __$$SuccessSendStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessSendStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$SuccessSendStateImpl>
    implements _$$SuccessSendStateImplCopyWith<$Res> {
  __$$SuccessSendStateImplCopyWithImpl(_$SuccessSendStateImpl _value,
      $Res Function(_$SuccessSendStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessSendStateImpl implements _SuccessSendState {
  const _$SuccessSendStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.successSend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessSendStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return successSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return successSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) {
    if (successSend != null) {
      return successSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return successSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return successSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (successSend != null) {
      return successSend(this);
    }
    return orElse();
  }
}

abstract class _SuccessSendState implements ChatDetailsState {
  const factory _SuccessSendState() = _$SuccessSendStateImpl;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.error()';
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
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
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
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ChatDetailsState {
  const factory _ErrorState() = _$ErrorStateImpl;
}

/// @nodoc
abstract class _$$SendReviewStateImplCopyWith<$Res> {
  factory _$$SendReviewStateImplCopyWith(_$SendReviewStateImpl value,
          $Res Function(_$SendReviewStateImpl) then) =
      __$$SendReviewStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendReviewStateImplCopyWithImpl<$Res>
    extends _$ChatDetailsStateCopyWithImpl<$Res, _$SendReviewStateImpl>
    implements _$$SendReviewStateImplCopyWith<$Res> {
  __$$SendReviewStateImplCopyWithImpl(
      _$SendReviewStateImpl _value, $Res Function(_$SendReviewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendReviewStateImpl implements _SendReviewState {
  const _$SendReviewStateImpl();

  @override
  String toString() {
    return 'ChatDetailsState.sendReview()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendReviewStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChatListModel chat, List<MessageModel> messages)
        success,
    required TResult Function() successFinish,
    required TResult Function() successDecline,
    required TResult Function() successAccept,
    required TResult Function() successSend,
    required TResult Function() error,
    required TResult Function() sendReview,
  }) {
    return sendReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult? Function()? successFinish,
    TResult? Function()? successDecline,
    TResult? Function()? successAccept,
    TResult? Function()? successSend,
    TResult? Function()? error,
    TResult? Function()? sendReview,
  }) {
    return sendReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChatListModel chat, List<MessageModel> messages)? success,
    TResult Function()? successFinish,
    TResult Function()? successDecline,
    TResult Function()? successAccept,
    TResult Function()? successSend,
    TResult Function()? error,
    TResult Function()? sendReview,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessFinishState value) successFinish,
    required TResult Function(_SuccessDeclineState value) successDecline,
    required TResult Function(_SuccessAcceptState value) successAccept,
    required TResult Function(_SuccessSendState value) successSend,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_SendReviewState value) sendReview,
  }) {
    return sendReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessFinishState value)? successFinish,
    TResult? Function(_SuccessDeclineState value)? successDecline,
    TResult? Function(_SuccessAcceptState value)? successAccept,
    TResult? Function(_SuccessSendState value)? successSend,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_SendReviewState value)? sendReview,
  }) {
    return sendReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessFinishState value)? successFinish,
    TResult Function(_SuccessDeclineState value)? successDecline,
    TResult Function(_SuccessAcceptState value)? successAccept,
    TResult Function(_SuccessSendState value)? successSend,
    TResult Function(_ErrorState value)? error,
    TResult Function(_SendReviewState value)? sendReview,
    required TResult orElse(),
  }) {
    if (sendReview != null) {
      return sendReview(this);
    }
    return orElse();
  }
}

abstract class _SendReviewState implements ChatDetailsState {
  const factory _SendReviewState() = _$SendReviewStateImpl;
}
