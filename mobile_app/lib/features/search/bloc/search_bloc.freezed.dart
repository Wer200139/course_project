// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchResultRequestedEventImplCopyWith<$Res> {
  factory _$$SearchResultRequestedEventImplCopyWith(
          _$SearchResultRequestedEventImpl value,
          $Res Function(_$SearchResultRequestedEventImpl) then) =
      __$$SearchResultRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchRequest request});
}

/// @nodoc
class __$$SearchResultRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchResultRequestedEventImpl>
    implements _$$SearchResultRequestedEventImplCopyWith<$Res> {
  __$$SearchResultRequestedEventImplCopyWithImpl(
      _$SearchResultRequestedEventImpl _value,
      $Res Function(_$SearchResultRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SearchResultRequestedEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SearchRequest,
    ));
  }
}

/// @nodoc

class _$SearchResultRequestedEventImpl implements _SearchResultRequestedEvent {
  const _$SearchResultRequestedEventImpl({required this.request});

  @override
  final SearchRequest request;

  @override
  String toString() {
    return 'SearchEvent.searchResultRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultRequestedEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultRequestedEventImplCopyWith<_$SearchResultRequestedEventImpl>
      get copyWith => __$$SearchResultRequestedEventImplCopyWithImpl<
          _$SearchResultRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return searchResultRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return searchResultRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (searchResultRequested != null) {
      return searchResultRequested(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return searchResultRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return searchResultRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (searchResultRequested != null) {
      return searchResultRequested(this);
    }
    return orElse();
  }
}

abstract class _SearchResultRequestedEvent implements SearchEvent {
  const factory _SearchResultRequestedEvent(
          {required final SearchRequest request}) =
      _$SearchResultRequestedEventImpl;

  SearchRequest get request;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultRequestedEventImplCopyWith<_$SearchResultRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetIndustriesRequestedEventImplCopyWith<$Res> {
  factory _$$GetIndustriesRequestedEventImplCopyWith(
          _$GetIndustriesRequestedEventImpl value,
          $Res Function(_$GetIndustriesRequestedEventImpl) then) =
      __$$GetIndustriesRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetIndustriesRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetIndustriesRequestedEventImpl>
    implements _$$GetIndustriesRequestedEventImplCopyWith<$Res> {
  __$$GetIndustriesRequestedEventImplCopyWithImpl(
      _$GetIndustriesRequestedEventImpl _value,
      $Res Function(_$GetIndustriesRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetIndustriesRequestedEventImpl
    implements _GetIndustriesRequestedEvent {
  const _$GetIndustriesRequestedEventImpl();

  @override
  String toString() {
    return 'SearchEvent.getIndustries()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIndustriesRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return getIndustries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return getIndustries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (getIndustries != null) {
      return getIndustries();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return getIndustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return getIndustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (getIndustries != null) {
      return getIndustries(this);
    }
    return orElse();
  }
}

abstract class _GetIndustriesRequestedEvent implements SearchEvent {
  const factory _GetIndustriesRequestedEvent() =
      _$GetIndustriesRequestedEventImpl;
}

/// @nodoc
abstract class _$$GetSubindustriesRequestedEventImplCopyWith<$Res> {
  factory _$$GetSubindustriesRequestedEventImplCopyWith(
          _$GetSubindustriesRequestedEventImpl value,
          $Res Function(_$GetSubindustriesRequestedEventImpl) then) =
      __$$GetSubindustriesRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetSubindustriesRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res,
        _$GetSubindustriesRequestedEventImpl>
    implements _$$GetSubindustriesRequestedEventImplCopyWith<$Res> {
  __$$GetSubindustriesRequestedEventImplCopyWithImpl(
      _$GetSubindustriesRequestedEventImpl _value,
      $Res Function(_$GetSubindustriesRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetSubindustriesRequestedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSubindustriesRequestedEventImpl
    implements _GetSubindustriesRequestedEvent {
  const _$GetSubindustriesRequestedEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SearchEvent.getSubindustries(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubindustriesRequestedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubindustriesRequestedEventImplCopyWith<
          _$GetSubindustriesRequestedEventImpl>
      get copyWith => __$$GetSubindustriesRequestedEventImplCopyWithImpl<
          _$GetSubindustriesRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return getSubindustries(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return getSubindustries?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (getSubindustries != null) {
      return getSubindustries(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return getSubindustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return getSubindustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (getSubindustries != null) {
      return getSubindustries(this);
    }
    return orElse();
  }
}

abstract class _GetSubindustriesRequestedEvent implements SearchEvent {
  const factory _GetSubindustriesRequestedEvent({required final int id}) =
      _$GetSubindustriesRequestedEventImpl;

  int get id;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubindustriesRequestedEventImplCopyWith<
          _$GetSubindustriesRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFunctionsRequestedEventImplCopyWith<$Res> {
  factory _$$GetFunctionsRequestedEventImplCopyWith(
          _$GetFunctionsRequestedEventImpl value,
          $Res Function(_$GetFunctionsRequestedEventImpl) then) =
      __$$GetFunctionsRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetFunctionsRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetFunctionsRequestedEventImpl>
    implements _$$GetFunctionsRequestedEventImplCopyWith<$Res> {
  __$$GetFunctionsRequestedEventImplCopyWithImpl(
      _$GetFunctionsRequestedEventImpl _value,
      $Res Function(_$GetFunctionsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetFunctionsRequestedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetFunctionsRequestedEventImpl implements _GetFunctionsRequestedEvent {
  const _$GetFunctionsRequestedEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SearchEvent.getFunctions(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFunctionsRequestedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFunctionsRequestedEventImplCopyWith<_$GetFunctionsRequestedEventImpl>
      get copyWith => __$$GetFunctionsRequestedEventImplCopyWithImpl<
          _$GetFunctionsRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return getFunctions(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return getFunctions?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (getFunctions != null) {
      return getFunctions(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return getFunctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return getFunctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (getFunctions != null) {
      return getFunctions(this);
    }
    return orElse();
  }
}

abstract class _GetFunctionsRequestedEvent implements SearchEvent {
  const factory _GetFunctionsRequestedEvent({required final int id}) =
      _$GetFunctionsRequestedEventImpl;

  int get id;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFunctionsRequestedEventImplCopyWith<_$GetFunctionsRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSubfunctionsRequestedEventImplCopyWith<$Res> {
  factory _$$GetSubfunctionsRequestedEventImplCopyWith(
          _$GetSubfunctionsRequestedEventImpl value,
          $Res Function(_$GetSubfunctionsRequestedEventImpl) then) =
      __$$GetSubfunctionsRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetSubfunctionsRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$GetSubfunctionsRequestedEventImpl>
    implements _$$GetSubfunctionsRequestedEventImplCopyWith<$Res> {
  __$$GetSubfunctionsRequestedEventImplCopyWithImpl(
      _$GetSubfunctionsRequestedEventImpl _value,
      $Res Function(_$GetSubfunctionsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetSubfunctionsRequestedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSubfunctionsRequestedEventImpl
    implements _GetSubfunctionsRequestedEvent {
  const _$GetSubfunctionsRequestedEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'SearchEvent.getSubfunctions(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubfunctionsRequestedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubfunctionsRequestedEventImplCopyWith<
          _$GetSubfunctionsRequestedEventImpl>
      get copyWith => __$$GetSubfunctionsRequestedEventImplCopyWithImpl<
          _$GetSubfunctionsRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return getSubfunctions(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return getSubfunctions?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (getSubfunctions != null) {
      return getSubfunctions(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return getSubfunctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return getSubfunctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (getSubfunctions != null) {
      return getSubfunctions(this);
    }
    return orElse();
  }
}

abstract class _GetSubfunctionsRequestedEvent implements SearchEvent {
  const factory _GetSubfunctionsRequestedEvent({required final int id}) =
      _$GetSubfunctionsRequestedEventImpl;

  int get id;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubfunctionsRequestedEventImplCopyWith<
          _$GetSubfunctionsRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartChatRequestedEventImplCopyWith<$Res> {
  factory _$$StartChatRequestedEventImplCopyWith(
          _$StartChatRequestedEventImpl value,
          $Res Function(_$StartChatRequestedEventImpl) then) =
      __$$StartChatRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$StartChatRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$StartChatRequestedEventImpl>
    implements _$$StartChatRequestedEventImplCopyWith<$Res> {
  __$$StartChatRequestedEventImplCopyWithImpl(
      _$StartChatRequestedEventImpl _value,
      $Res Function(_$StartChatRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$StartChatRequestedEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartChatRequestedEventImpl implements _StartChatRequestedEvent {
  const _$StartChatRequestedEventImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'SearchEvent.startChat(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartChatRequestedEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartChatRequestedEventImplCopyWith<_$StartChatRequestedEventImpl>
      get copyWith => __$$StartChatRequestedEventImplCopyWithImpl<
          _$StartChatRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return startChat(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return startChat?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (startChat != null) {
      return startChat(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return startChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return startChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (startChat != null) {
      return startChat(this);
    }
    return orElse();
  }
}

abstract class _StartChatRequestedEvent implements SearchEvent {
  const factory _StartChatRequestedEvent({required final int userId}) =
      _$StartChatRequestedEventImpl;

  int get userId;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartChatRequestedEventImplCopyWith<_$StartChatRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchRequestedEventImplCopyWith<$Res> {
  factory _$$ResetSearchRequestedEventImplCopyWith(
          _$ResetSearchRequestedEventImpl value,
          $Res Function(_$ResetSearchRequestedEventImpl) then) =
      __$$ResetSearchRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSearchRequestedEventImplCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$ResetSearchRequestedEventImpl>
    implements _$$ResetSearchRequestedEventImplCopyWith<$Res> {
  __$$ResetSearchRequestedEventImplCopyWithImpl(
      _$ResetSearchRequestedEventImpl _value,
      $Res Function(_$ResetSearchRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetSearchRequestedEventImpl implements _ResetSearchRequestedEvent {
  const _$ResetSearchRequestedEventImpl();

  @override
  String toString() {
    return 'SearchEvent.resetSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetSearchRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchRequest request) searchResultRequested,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(int userId) startChat,
    required TResult Function() resetSearch,
  }) {
    return resetSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchRequest request)? searchResultRequested,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(int userId)? startChat,
    TResult? Function()? resetSearch,
  }) {
    return resetSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchRequest request)? searchResultRequested,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(int userId)? startChat,
    TResult Function()? resetSearch,
    required TResult orElse(),
  }) {
    if (resetSearch != null) {
      return resetSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchResultRequestedEvent value)
        searchResultRequested,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_ResetSearchRequestedEvent value) resetSearch,
  }) {
    return resetSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_ResetSearchRequestedEvent value)? resetSearch,
  }) {
    return resetSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchResultRequestedEvent value)? searchResultRequested,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_ResetSearchRequestedEvent value)? resetSearch,
    required TResult orElse(),
  }) {
    if (resetSearch != null) {
      return resetSearch(this);
    }
    return orElse();
  }
}

abstract class _ResetSearchRequestedEvent implements SearchEvent {
  const factory _ResetSearchRequestedEvent() = _$ResetSearchRequestedEventImpl;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
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
    extends _$SearchStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
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
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
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
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
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
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
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
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements SearchState {
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
    extends _$SearchStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'SearchState.loading()';
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
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
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
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
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
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
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
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements SearchState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ExpertResultModel> experts});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experts = null,
  }) {
    return _then(_$SuccessStateImpl(
      experts: null == experts
          ? _value._experts
          : experts // ignore: cast_nullable_to_non_nullable
              as List<ExpertResultModel>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl({required final List<ExpertResultModel> experts})
      : _experts = experts;

  final List<ExpertResultModel> _experts;
  @override
  List<ExpertResultModel> get experts {
    if (_experts is EqualUnmodifiableListView) return _experts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experts);
  }

  @override
  String toString() {
    return 'SearchState.success(experts: $experts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._experts, _experts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_experts));

  /// Create a copy of SearchState
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
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return success(experts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return success?.call(experts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(experts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
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
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
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
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements SearchState {
  const factory _SuccessState(
      {required final List<ExpertResultModel> experts}) = _$SuccessStateImpl;

  List<ExpertResultModel> get experts;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessIndustriesStateImplCopyWith<$Res> {
  factory _$$SuccessIndustriesStateImplCopyWith(
          _$SuccessIndustriesStateImpl value,
          $Res Function(_$SuccessIndustriesStateImpl) then) =
      __$$SuccessIndustriesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClassificatorModel> industries});
}

/// @nodoc
class __$$SuccessIndustriesStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessIndustriesStateImpl>
    implements _$$SuccessIndustriesStateImplCopyWith<$Res> {
  __$$SuccessIndustriesStateImplCopyWithImpl(
      _$SuccessIndustriesStateImpl _value,
      $Res Function(_$SuccessIndustriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? industries = null,
  }) {
    return _then(_$SuccessIndustriesStateImpl(
      industries: null == industries
          ? _value._industries
          : industries // ignore: cast_nullable_to_non_nullable
              as List<ClassificatorModel>,
    ));
  }
}

/// @nodoc

class _$SuccessIndustriesStateImpl implements _SuccessIndustriesState {
  const _$SuccessIndustriesStateImpl(
      {required final List<ClassificatorModel> industries})
      : _industries = industries;

  final List<ClassificatorModel> _industries;
  @override
  List<ClassificatorModel> get industries {
    if (_industries is EqualUnmodifiableListView) return _industries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_industries);
  }

  @override
  String toString() {
    return 'SearchState.successGetIndustries(industries: $industries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessIndustriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._industries, _industries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_industries));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessIndustriesStateImplCopyWith<_$SuccessIndustriesStateImpl>
      get copyWith => __$$SuccessIndustriesStateImplCopyWithImpl<
          _$SuccessIndustriesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successGetIndustries(industries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successGetIndustries?.call(industries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successGetIndustries != null) {
      return successGetIndustries(industries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successGetIndustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successGetIndustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successGetIndustries != null) {
      return successGetIndustries(this);
    }
    return orElse();
  }
}

abstract class _SuccessIndustriesState implements SearchState {
  const factory _SuccessIndustriesState(
          {required final List<ClassificatorModel> industries}) =
      _$SuccessIndustriesStateImpl;

  List<ClassificatorModel> get industries;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessIndustriesStateImplCopyWith<_$SuccessIndustriesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSubindustriesStateImplCopyWith<$Res> {
  factory _$$SuccessSubindustriesStateImplCopyWith(
          _$SuccessSubindustriesStateImpl value,
          $Res Function(_$SuccessSubindustriesStateImpl) then) =
      __$$SuccessSubindustriesStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ClassificatorModel> subindustries,
      List<ClassificatorModel> functions,
      List<ClassificatorModel> subfunctions});
}

/// @nodoc
class __$$SuccessSubindustriesStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessSubindustriesStateImpl>
    implements _$$SuccessSubindustriesStateImplCopyWith<$Res> {
  __$$SuccessSubindustriesStateImplCopyWithImpl(
      _$SuccessSubindustriesStateImpl _value,
      $Res Function(_$SuccessSubindustriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subindustries = null,
    Object? functions = null,
    Object? subfunctions = null,
  }) {
    return _then(_$SuccessSubindustriesStateImpl(
      subindustries: null == subindustries
          ? _value._subindustries
          : subindustries // ignore: cast_nullable_to_non_nullable
              as List<ClassificatorModel>,
      functions: null == functions
          ? _value._functions
          : functions // ignore: cast_nullable_to_non_nullable
              as List<ClassificatorModel>,
      subfunctions: null == subfunctions
          ? _value._subfunctions
          : subfunctions // ignore: cast_nullable_to_non_nullable
              as List<ClassificatorModel>,
    ));
  }
}

/// @nodoc

class _$SuccessSubindustriesStateImpl implements _SuccessSubindustriesState {
  const _$SuccessSubindustriesStateImpl(
      {required final List<ClassificatorModel> subindustries,
      required final List<ClassificatorModel> functions,
      required final List<ClassificatorModel> subfunctions})
      : _subindustries = subindustries,
        _functions = functions,
        _subfunctions = subfunctions;

  final List<ClassificatorModel> _subindustries;
  @override
  List<ClassificatorModel> get subindustries {
    if (_subindustries is EqualUnmodifiableListView) return _subindustries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subindustries);
  }

  final List<ClassificatorModel> _functions;
  @override
  List<ClassificatorModel> get functions {
    if (_functions is EqualUnmodifiableListView) return _functions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_functions);
  }

  final List<ClassificatorModel> _subfunctions;
  @override
  List<ClassificatorModel> get subfunctions {
    if (_subfunctions is EqualUnmodifiableListView) return _subfunctions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subfunctions);
  }

  @override
  String toString() {
    return 'SearchState.successGetSubindustries(subindustries: $subindustries, functions: $functions, subfunctions: $subfunctions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSubindustriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._subindustries, _subindustries) &&
            const DeepCollectionEquality()
                .equals(other._functions, _functions) &&
            const DeepCollectionEquality()
                .equals(other._subfunctions, _subfunctions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subindustries),
      const DeepCollectionEquality().hash(_functions),
      const DeepCollectionEquality().hash(_subfunctions));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSubindustriesStateImplCopyWith<_$SuccessSubindustriesStateImpl>
      get copyWith => __$$SuccessSubindustriesStateImplCopyWithImpl<
          _$SuccessSubindustriesStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successGetSubindustries(subindustries, functions, subfunctions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successGetSubindustries?.call(
        subindustries, functions, subfunctions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successGetSubindustries != null) {
      return successGetSubindustries(subindustries, functions, subfunctions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successGetSubindustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successGetSubindustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successGetSubindustries != null) {
      return successGetSubindustries(this);
    }
    return orElse();
  }
}

abstract class _SuccessSubindustriesState implements SearchState {
  const factory _SuccessSubindustriesState(
          {required final List<ClassificatorModel> subindustries,
          required final List<ClassificatorModel> functions,
          required final List<ClassificatorModel> subfunctions}) =
      _$SuccessSubindustriesStateImpl;

  List<ClassificatorModel> get subindustries;
  List<ClassificatorModel> get functions;
  List<ClassificatorModel> get subfunctions;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSubindustriesStateImplCopyWith<_$SuccessSubindustriesStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessFunctionsStateImplCopyWith<$Res> {
  factory _$$SuccessFunctionsStateImplCopyWith(
          _$SuccessFunctionsStateImpl value,
          $Res Function(_$SuccessFunctionsStateImpl) then) =
      __$$SuccessFunctionsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClassificatorModel> functions});
}

/// @nodoc
class __$$SuccessFunctionsStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessFunctionsStateImpl>
    implements _$$SuccessFunctionsStateImplCopyWith<$Res> {
  __$$SuccessFunctionsStateImplCopyWithImpl(_$SuccessFunctionsStateImpl _value,
      $Res Function(_$SuccessFunctionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? functions = null,
  }) {
    return _then(_$SuccessFunctionsStateImpl(
      functions: null == functions
          ? _value._functions
          : functions // ignore: cast_nullable_to_non_nullable
              as List<ClassificatorModel>,
    ));
  }
}

/// @nodoc

class _$SuccessFunctionsStateImpl implements _SuccessFunctionsState {
  const _$SuccessFunctionsStateImpl(
      {required final List<ClassificatorModel> functions})
      : _functions = functions;

  final List<ClassificatorModel> _functions;
  @override
  List<ClassificatorModel> get functions {
    if (_functions is EqualUnmodifiableListView) return _functions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_functions);
  }

  @override
  String toString() {
    return 'SearchState.successGetFunctions(functions: $functions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessFunctionsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._functions, _functions));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_functions));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessFunctionsStateImplCopyWith<_$SuccessFunctionsStateImpl>
      get copyWith => __$$SuccessFunctionsStateImplCopyWithImpl<
          _$SuccessFunctionsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successGetFunctions(functions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successGetFunctions?.call(functions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successGetFunctions != null) {
      return successGetFunctions(functions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successGetFunctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successGetFunctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successGetFunctions != null) {
      return successGetFunctions(this);
    }
    return orElse();
  }
}

abstract class _SuccessFunctionsState implements SearchState {
  const factory _SuccessFunctionsState(
          {required final List<ClassificatorModel> functions}) =
      _$SuccessFunctionsStateImpl;

  List<ClassificatorModel> get functions;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessFunctionsStateImplCopyWith<_$SuccessFunctionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSubfunctionsStateImplCopyWith<$Res> {
  factory _$$SuccessSubfunctionsStateImplCopyWith(
          _$SuccessSubfunctionsStateImpl value,
          $Res Function(_$SuccessSubfunctionsStateImpl) then) =
      __$$SuccessSubfunctionsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ClassificatorModel> subfunctions});
}

/// @nodoc
class __$$SuccessSubfunctionsStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessSubfunctionsStateImpl>
    implements _$$SuccessSubfunctionsStateImplCopyWith<$Res> {
  __$$SuccessSubfunctionsStateImplCopyWithImpl(
      _$SuccessSubfunctionsStateImpl _value,
      $Res Function(_$SuccessSubfunctionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subfunctions = null,
  }) {
    return _then(_$SuccessSubfunctionsStateImpl(
      subfunctions: null == subfunctions
          ? _value._subfunctions
          : subfunctions // ignore: cast_nullable_to_non_nullable
              as List<ClassificatorModel>,
    ));
  }
}

/// @nodoc

class _$SuccessSubfunctionsStateImpl implements _SuccessSubfunctionsState {
  const _$SuccessSubfunctionsStateImpl(
      {required final List<ClassificatorModel> subfunctions})
      : _subfunctions = subfunctions;

  final List<ClassificatorModel> _subfunctions;
  @override
  List<ClassificatorModel> get subfunctions {
    if (_subfunctions is EqualUnmodifiableListView) return _subfunctions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subfunctions);
  }

  @override
  String toString() {
    return 'SearchState.successGetSubfunctions(subfunctions: $subfunctions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSubfunctionsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._subfunctions, _subfunctions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subfunctions));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSubfunctionsStateImplCopyWith<_$SuccessSubfunctionsStateImpl>
      get copyWith => __$$SuccessSubfunctionsStateImplCopyWithImpl<
          _$SuccessSubfunctionsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successGetSubfunctions(subfunctions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successGetSubfunctions?.call(subfunctions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successGetSubfunctions != null) {
      return successGetSubfunctions(subfunctions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successGetSubfunctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successGetSubfunctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successGetSubfunctions != null) {
      return successGetSubfunctions(this);
    }
    return orElse();
  }
}

abstract class _SuccessSubfunctionsState implements SearchState {
  const factory _SuccessSubfunctionsState(
          {required final List<ClassificatorModel> subfunctions}) =
      _$SuccessSubfunctionsStateImpl;

  List<ClassificatorModel> get subfunctions;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSubfunctionsStateImplCopyWith<_$SuccessSubfunctionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStartChatStateImplCopyWith<$Res> {
  factory _$$SuccessStartChatStateImplCopyWith(
          _$SuccessStartChatStateImpl value,
          $Res Function(_$SuccessStartChatStateImpl) then) =
      __$$SuccessStartChatStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int chatId});
}

/// @nodoc
class __$$SuccessStartChatStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SuccessStartChatStateImpl>
    implements _$$SuccessStartChatStateImplCopyWith<$Res> {
  __$$SuccessStartChatStateImplCopyWithImpl(_$SuccessStartChatStateImpl _value,
      $Res Function(_$SuccessStartChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$SuccessStartChatStateImpl(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SuccessStartChatStateImpl implements _SuccessStartChatState {
  const _$SuccessStartChatStateImpl({required this.chatId});

  @override
  final int chatId;

  @override
  String toString() {
    return 'SearchState.successStartChat(chatId: $chatId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStartChatStateImpl &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStartChatStateImplCopyWith<_$SuccessStartChatStateImpl>
      get copyWith => __$$SuccessStartChatStateImplCopyWithImpl<
          _$SuccessStartChatStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successStartChat(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successStartChat?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successStartChat != null) {
      return successStartChat(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successStartChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successStartChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successStartChat != null) {
      return successStartChat(this);
    }
    return orElse();
  }
}

abstract class _SuccessStartChatState implements SearchState {
  const factory _SuccessStartChatState({required final int chatId}) =
      _$SuccessStartChatStateImpl;

  int get chatId;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessStartChatStateImplCopyWith<_$SuccessStartChatStateImpl>
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
    extends _$SearchStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'SearchState.error()';
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
    required TResult Function(List<ExpertResultModel> experts) success,
    required TResult Function(List<ClassificatorModel> industries)
        successGetIndustries,
    required TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)
        successGetSubindustries,
    required TResult Function(List<ClassificatorModel> functions)
        successGetFunctions,
    required TResult Function(List<ClassificatorModel> subfunctions)
        successGetSubfunctions,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ExpertResultModel> experts)? success,
    TResult? Function(List<ClassificatorModel> industries)?
        successGetIndustries,
    TResult? Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult? Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult? Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ExpertResultModel> experts)? success,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(int chatId)? successStartChat,
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
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessStartChatState value) successStartChat,
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
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
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
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements SearchState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
