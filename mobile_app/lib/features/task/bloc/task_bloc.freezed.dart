// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchExpertRequestedEventImplCopyWith<$Res> {
  factory _$$FetchExpertRequestedEventImplCopyWith(
          _$FetchExpertRequestedEventImpl value,
          $Res Function(_$FetchExpertRequestedEventImpl) then) =
      __$$FetchExpertRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchTaskRequest request, int currentUserId});
}

/// @nodoc
class __$$FetchExpertRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$FetchExpertRequestedEventImpl>
    implements _$$FetchExpertRequestedEventImplCopyWith<$Res> {
  __$$FetchExpertRequestedEventImplCopyWithImpl(
      _$FetchExpertRequestedEventImpl _value,
      $Res Function(_$FetchExpertRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? currentUserId = null,
  }) {
    return _then(_$FetchExpertRequestedEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SearchTaskRequest,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchExpertRequestedEventImpl implements _FetchExpertRequestedEvent {
  const _$FetchExpertRequestedEventImpl(
      {required this.request, required this.currentUserId});

  @override
  final SearchTaskRequest request;
  @override
  final int currentUserId;

  @override
  String toString() {
    return 'TaskEvent.fetchExpertRequested(request: $request, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchExpertRequestedEventImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, currentUserId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchExpertRequestedEventImplCopyWith<_$FetchExpertRequestedEventImpl>
      get copyWith => __$$FetchExpertRequestedEventImplCopyWithImpl<
          _$FetchExpertRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return fetchExpertRequested(request, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return fetchExpertRequested?.call(request, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (fetchExpertRequested != null) {
      return fetchExpertRequested(request, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return fetchExpertRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return fetchExpertRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (fetchExpertRequested != null) {
      return fetchExpertRequested(this);
    }
    return orElse();
  }
}

abstract class _FetchExpertRequestedEvent implements TaskEvent {
  const factory _FetchExpertRequestedEvent(
      {required final SearchTaskRequest request,
      required final int currentUserId}) = _$FetchExpertRequestedEventImpl;

  SearchTaskRequest get request;
  int get currentUserId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchExpertRequestedEventImplCopyWith<_$FetchExpertRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskEventImplCopyWith<$Res> {
  factory _$$CreateTaskEventImplCopyWith(_$CreateTaskEventImpl value,
          $Res Function(_$CreateTaskEventImpl) then) =
      __$$CreateTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateTaskRequest request});
}

/// @nodoc
class __$$CreateTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$CreateTaskEventImpl>
    implements _$$CreateTaskEventImplCopyWith<$Res> {
  __$$CreateTaskEventImplCopyWithImpl(
      _$CreateTaskEventImpl _value, $Res Function(_$CreateTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$CreateTaskEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateTaskRequest,
    ));
  }
}

/// @nodoc

class _$CreateTaskEventImpl implements _CreateTaskEvent {
  const _$CreateTaskEventImpl({required this.request});

  @override
  final CreateTaskRequest request;

  @override
  String toString() {
    return 'TaskEvent.createTask(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskEventImplCopyWith<_$CreateTaskEventImpl> get copyWith =>
      __$$CreateTaskEventImplCopyWithImpl<_$CreateTaskEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return createTask(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return createTask?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTaskEvent implements TaskEvent {
  const factory _CreateTaskEvent({required final CreateTaskRequest request}) =
      _$CreateTaskEventImpl;

  CreateTaskRequest get request;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskEventImplCopyWith<_$CreateTaskEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateInviteTaskEventImplCopyWith<$Res> {
  factory _$$CreateInviteTaskEventImplCopyWith(
          _$CreateInviteTaskEventImpl value,
          $Res Function(_$CreateInviteTaskEventImpl) then) =
      __$$CreateInviteTaskEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int expertId, CreateTaskRequest request});
}

/// @nodoc
class __$$CreateInviteTaskEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$CreateInviteTaskEventImpl>
    implements _$$CreateInviteTaskEventImplCopyWith<$Res> {
  __$$CreateInviteTaskEventImplCopyWithImpl(_$CreateInviteTaskEventImpl _value,
      $Res Function(_$CreateInviteTaskEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertId = null,
    Object? request = null,
  }) {
    return _then(_$CreateInviteTaskEventImpl(
      expertId: null == expertId
          ? _value.expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as int,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateTaskRequest,
    ));
  }
}

/// @nodoc

class _$CreateInviteTaskEventImpl implements _CreateInviteTaskEvent {
  const _$CreateInviteTaskEventImpl(
      {required this.expertId, required this.request});

  @override
  final int expertId;
  @override
  final CreateTaskRequest request;

  @override
  String toString() {
    return 'TaskEvent.createInviteTask(expertId: $expertId, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateInviteTaskEventImpl &&
            (identical(other.expertId, expertId) ||
                other.expertId == expertId) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expertId, request);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateInviteTaskEventImplCopyWith<_$CreateInviteTaskEventImpl>
      get copyWith => __$$CreateInviteTaskEventImplCopyWithImpl<
          _$CreateInviteTaskEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return createInviteTask(expertId, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return createInviteTask?.call(expertId, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (createInviteTask != null) {
      return createInviteTask(expertId, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return createInviteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return createInviteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (createInviteTask != null) {
      return createInviteTask(this);
    }
    return orElse();
  }
}

abstract class _CreateInviteTaskEvent implements TaskEvent {
  const factory _CreateInviteTaskEvent(
      {required final int expertId,
      required final CreateTaskRequest request}) = _$CreateInviteTaskEventImpl;

  int get expertId;
  CreateTaskRequest get request;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateInviteTaskEventImplCopyWith<_$CreateInviteTaskEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateTaskInviteExpertsEventImplCopyWith<$Res> {
  factory _$$CreateTaskInviteExpertsEventImplCopyWith(
          _$CreateTaskInviteExpertsEventImpl value,
          $Res Function(_$CreateTaskInviteExpertsEventImpl) then) =
      __$$CreateTaskInviteExpertsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> expertIds, CreateTaskRequest request});
}

/// @nodoc
class __$$CreateTaskInviteExpertsEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$CreateTaskInviteExpertsEventImpl>
    implements _$$CreateTaskInviteExpertsEventImplCopyWith<$Res> {
  __$$CreateTaskInviteExpertsEventImplCopyWithImpl(
      _$CreateTaskInviteExpertsEventImpl _value,
      $Res Function(_$CreateTaskInviteExpertsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertIds = null,
    Object? request = null,
  }) {
    return _then(_$CreateTaskInviteExpertsEventImpl(
      expertIds: null == expertIds
          ? _value._expertIds
          : expertIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateTaskRequest,
    ));
  }
}

/// @nodoc

class _$CreateTaskInviteExpertsEventImpl
    implements _CreateTaskInviteExpertsEvent {
  const _$CreateTaskInviteExpertsEventImpl(
      {required final List<int> expertIds, required this.request})
      : _expertIds = expertIds;

  final List<int> _expertIds;
  @override
  List<int> get expertIds {
    if (_expertIds is EqualUnmodifiableListView) return _expertIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expertIds);
  }

  @override
  final CreateTaskRequest request;

  @override
  String toString() {
    return 'TaskEvent.createTaskInviteExperts(expertIds: $expertIds, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskInviteExpertsEventImpl &&
            const DeepCollectionEquality()
                .equals(other._expertIds, _expertIds) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_expertIds), request);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskInviteExpertsEventImplCopyWith<
          _$CreateTaskInviteExpertsEventImpl>
      get copyWith => __$$CreateTaskInviteExpertsEventImplCopyWithImpl<
          _$CreateTaskInviteExpertsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return createTaskInviteExperts(expertIds, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return createTaskInviteExperts?.call(expertIds, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (createTaskInviteExperts != null) {
      return createTaskInviteExperts(expertIds, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return createTaskInviteExperts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return createTaskInviteExperts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (createTaskInviteExperts != null) {
      return createTaskInviteExperts(this);
    }
    return orElse();
  }
}

abstract class _CreateTaskInviteExpertsEvent implements TaskEvent {
  const factory _CreateTaskInviteExpertsEvent(
          {required final List<int> expertIds,
          required final CreateTaskRequest request}) =
      _$CreateTaskInviteExpertsEventImpl;

  List<int> get expertIds;
  CreateTaskRequest get request;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskInviteExpertsEventImplCopyWith<
          _$CreateTaskInviteExpertsEventImpl>
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
    extends _$TaskEventCopyWithImpl<$Res, _$GetIndustriesRequestedEventImpl>
    implements _$$GetIndustriesRequestedEventImplCopyWith<$Res> {
  __$$GetIndustriesRequestedEventImplCopyWithImpl(
      _$GetIndustriesRequestedEventImpl _value,
      $Res Function(_$GetIndustriesRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetIndustriesRequestedEventImpl
    implements _GetIndustriesRequestedEvent {
  const _$GetIndustriesRequestedEventImpl();

  @override
  String toString() {
    return 'TaskEvent.getIndustries()';
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
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getIndustries();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getIndustries?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
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
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getIndustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getIndustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getIndustries != null) {
      return getIndustries(this);
    }
    return orElse();
  }
}

abstract class _GetIndustriesRequestedEvent implements TaskEvent {
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
    extends _$TaskEventCopyWithImpl<$Res, _$GetSubindustriesRequestedEventImpl>
    implements _$$GetSubindustriesRequestedEventImplCopyWith<$Res> {
  __$$GetSubindustriesRequestedEventImplCopyWithImpl(
      _$GetSubindustriesRequestedEventImpl _value,
      $Res Function(_$GetSubindustriesRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
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
    return 'TaskEvent.getSubindustries(id: $id)';
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

  /// Create a copy of TaskEvent
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
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getSubindustries(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getSubindustries?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
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
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getSubindustries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getSubindustries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getSubindustries != null) {
      return getSubindustries(this);
    }
    return orElse();
  }
}

abstract class _GetSubindustriesRequestedEvent implements TaskEvent {
  const factory _GetSubindustriesRequestedEvent({required final int id}) =
      _$GetSubindustriesRequestedEventImpl;

  int get id;

  /// Create a copy of TaskEvent
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
    extends _$TaskEventCopyWithImpl<$Res, _$GetFunctionsRequestedEventImpl>
    implements _$$GetFunctionsRequestedEventImplCopyWith<$Res> {
  __$$GetFunctionsRequestedEventImplCopyWithImpl(
      _$GetFunctionsRequestedEventImpl _value,
      $Res Function(_$GetFunctionsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
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
    return 'TaskEvent.getFunctions(id: $id)';
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

  /// Create a copy of TaskEvent
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
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getFunctions(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getFunctions?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
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
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getFunctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getFunctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getFunctions != null) {
      return getFunctions(this);
    }
    return orElse();
  }
}

abstract class _GetFunctionsRequestedEvent implements TaskEvent {
  const factory _GetFunctionsRequestedEvent({required final int id}) =
      _$GetFunctionsRequestedEventImpl;

  int get id;

  /// Create a copy of TaskEvent
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
    extends _$TaskEventCopyWithImpl<$Res, _$GetSubfunctionsRequestedEventImpl>
    implements _$$GetSubfunctionsRequestedEventImplCopyWith<$Res> {
  __$$GetSubfunctionsRequestedEventImplCopyWithImpl(
      _$GetSubfunctionsRequestedEventImpl _value,
      $Res Function(_$GetSubfunctionsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
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
    return 'TaskEvent.getSubfunctions(id: $id)';
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

  /// Create a copy of TaskEvent
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
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getSubfunctions(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getSubfunctions?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
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
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getSubfunctions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getSubfunctions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getSubfunctions != null) {
      return getSubfunctions(this);
    }
    return orElse();
  }
}

abstract class _GetSubfunctionsRequestedEvent implements TaskEvent {
  const factory _GetSubfunctionsRequestedEvent({required final int id}) =
      _$GetSubfunctionsRequestedEventImpl;

  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSubfunctionsRequestedEventImplCopyWith<
          _$GetSubfunctionsRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendApplicationRequestedEventImplCopyWith<$Res> {
  factory _$$SendApplicationRequestedEventImplCopyWith(
          _$SendApplicationRequestedEventImpl value,
          $Res Function(_$SendApplicationRequestedEventImpl) then) =
      __$$SendApplicationRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskApplicationRequest request});
}

/// @nodoc
class __$$SendApplicationRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$SendApplicationRequestedEventImpl>
    implements _$$SendApplicationRequestedEventImplCopyWith<$Res> {
  __$$SendApplicationRequestedEventImplCopyWithImpl(
      _$SendApplicationRequestedEventImpl _value,
      $Res Function(_$SendApplicationRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$SendApplicationRequestedEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TaskApplicationRequest,
    ));
  }
}

/// @nodoc

class _$SendApplicationRequestedEventImpl
    implements _SendApplicationRequestedEvent {
  const _$SendApplicationRequestedEventImpl({required this.request});

  @override
  final TaskApplicationRequest request;

  @override
  String toString() {
    return 'TaskEvent.sendApplcationRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendApplicationRequestedEventImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendApplicationRequestedEventImplCopyWith<
          _$SendApplicationRequestedEventImpl>
      get copyWith => __$$SendApplicationRequestedEventImplCopyWithImpl<
          _$SendApplicationRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return sendApplcationRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return sendApplcationRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (sendApplcationRequested != null) {
      return sendApplcationRequested(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return sendApplcationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return sendApplcationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (sendApplcationRequested != null) {
      return sendApplcationRequested(this);
    }
    return orElse();
  }
}

abstract class _SendApplicationRequestedEvent implements TaskEvent {
  const factory _SendApplicationRequestedEvent(
          {required final TaskApplicationRequest request}) =
      _$SendApplicationRequestedEventImpl;

  TaskApplicationRequest get request;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendApplicationRequestedEventImplCopyWith<
          _$SendApplicationRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTasksExpertRequestedEventImplCopyWith<$Res> {
  factory _$$GetTasksExpertRequestedEventImplCopyWith(
          _$GetTasksExpertRequestedEventImpl value,
          $Res Function(_$GetTasksExpertRequestedEventImpl) then) =
      __$$GetTasksExpertRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchTaskRequest request, int currentUserId});
}

/// @nodoc
class __$$GetTasksExpertRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksExpertRequestedEventImpl>
    implements _$$GetTasksExpertRequestedEventImplCopyWith<$Res> {
  __$$GetTasksExpertRequestedEventImplCopyWithImpl(
      _$GetTasksExpertRequestedEventImpl _value,
      $Res Function(_$GetTasksExpertRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? currentUserId = null,
  }) {
    return _then(_$GetTasksExpertRequestedEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SearchTaskRequest,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTasksExpertRequestedEventImpl
    implements _GetTasksExpertRequestedEvent {
  const _$GetTasksExpertRequestedEventImpl(
      {required this.request, required this.currentUserId});

  @override
  final SearchTaskRequest request;
  @override
  final int currentUserId;

  @override
  String toString() {
    return 'TaskEvent.getTasksExpertRequested(request: $request, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksExpertRequestedEventImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, currentUserId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksExpertRequestedEventImplCopyWith<
          _$GetTasksExpertRequestedEventImpl>
      get copyWith => __$$GetTasksExpertRequestedEventImplCopyWithImpl<
          _$GetTasksExpertRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getTasksExpertRequested(request, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getTasksExpertRequested?.call(request, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksExpertRequested != null) {
      return getTasksExpertRequested(request, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getTasksExpertRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getTasksExpertRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksExpertRequested != null) {
      return getTasksExpertRequested(this);
    }
    return orElse();
  }
}

abstract class _GetTasksExpertRequestedEvent implements TaskEvent {
  const factory _GetTasksExpertRequestedEvent(
      {required final SearchTaskRequest request,
      required final int currentUserId}) = _$GetTasksExpertRequestedEventImpl;

  SearchTaskRequest get request;
  int get currentUserId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTasksExpertRequestedEventImplCopyWith<
          _$GetTasksExpertRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTasksExpertNextPageEventImplCopyWith<$Res> {
  factory _$$GetTasksExpertNextPageEventImplCopyWith(
          _$GetTasksExpertNextPageEventImpl value,
          $Res Function(_$GetTasksExpertNextPageEventImpl) then) =
      __$$GetTasksExpertNextPageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchTaskRequest request, int currentUserId});
}

/// @nodoc
class __$$GetTasksExpertNextPageEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksExpertNextPageEventImpl>
    implements _$$GetTasksExpertNextPageEventImplCopyWith<$Res> {
  __$$GetTasksExpertNextPageEventImplCopyWithImpl(
      _$GetTasksExpertNextPageEventImpl _value,
      $Res Function(_$GetTasksExpertNextPageEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? currentUserId = null,
  }) {
    return _then(_$GetTasksExpertNextPageEventImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as SearchTaskRequest,
      currentUserId: null == currentUserId
          ? _value.currentUserId
          : currentUserId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTasksExpertNextPageEventImpl
    implements _GetTasksExpertNextPageEvent {
  const _$GetTasksExpertNextPageEventImpl(
      {required this.request, required this.currentUserId});

  @override
  final SearchTaskRequest request;
  @override
  final int currentUserId;

  @override
  String toString() {
    return 'TaskEvent.getTasksExpertNextPage(request: $request, currentUserId: $currentUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksExpertNextPageEventImpl &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.currentUserId, currentUserId) ||
                other.currentUserId == currentUserId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, currentUserId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksExpertNextPageEventImplCopyWith<_$GetTasksExpertNextPageEventImpl>
      get copyWith => __$$GetTasksExpertNextPageEventImplCopyWithImpl<
          _$GetTasksExpertNextPageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getTasksExpertNextPage(request, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getTasksExpertNextPage?.call(request, currentUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksExpertNextPage != null) {
      return getTasksExpertNextPage(request, currentUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getTasksExpertNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getTasksExpertNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksExpertNextPage != null) {
      return getTasksExpertNextPage(this);
    }
    return orElse();
  }
}

abstract class _GetTasksExpertNextPageEvent implements TaskEvent {
  const factory _GetTasksExpertNextPageEvent(
      {required final SearchTaskRequest request,
      required final int currentUserId}) = _$GetTasksExpertNextPageEventImpl;

  SearchTaskRequest get request;
  int get currentUserId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTasksExpertNextPageEventImplCopyWith<_$GetTasksExpertNextPageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTasksCustomerRequestedEventImplCopyWith<$Res> {
  factory _$$GetTasksCustomerRequestedEventImplCopyWith(
          _$GetTasksCustomerRequestedEventImpl value,
          $Res Function(_$GetTasksCustomerRequestedEventImpl) then) =
      __$$GetTasksCustomerRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTasksCustomerRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksCustomerRequestedEventImpl>
    implements _$$GetTasksCustomerRequestedEventImplCopyWith<$Res> {
  __$$GetTasksCustomerRequestedEventImplCopyWithImpl(
      _$GetTasksCustomerRequestedEventImpl _value,
      $Res Function(_$GetTasksCustomerRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTasksCustomerRequestedEventImpl
    implements _GetTasksCustomerRequestedEvent {
  const _$GetTasksCustomerRequestedEventImpl();

  @override
  String toString() {
    return 'TaskEvent.getTasksCustomerRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksCustomerRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getTasksCustomerRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getTasksCustomerRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksCustomerRequested != null) {
      return getTasksCustomerRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getTasksCustomerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getTasksCustomerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksCustomerRequested != null) {
      return getTasksCustomerRequested(this);
    }
    return orElse();
  }
}

abstract class _GetTasksCustomerRequestedEvent implements TaskEvent {
  const factory _GetTasksCustomerRequestedEvent() =
      _$GetTasksCustomerRequestedEventImpl;
}

/// @nodoc
abstract class _$$GetTasksForExpertRequestedEventImplCopyWith<$Res> {
  factory _$$GetTasksForExpertRequestedEventImplCopyWith(
          _$GetTasksForExpertRequestedEventImpl value,
          $Res Function(_$GetTasksForExpertRequestedEventImpl) then) =
      __$$GetTasksForExpertRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$GetTasksForExpertRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetTasksForExpertRequestedEventImpl>
    implements _$$GetTasksForExpertRequestedEventImplCopyWith<$Res> {
  __$$GetTasksForExpertRequestedEventImplCopyWithImpl(
      _$GetTasksForExpertRequestedEventImpl _value,
      $Res Function(_$GetTasksForExpertRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetTasksForExpertRequestedEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetTasksForExpertRequestedEventImpl
    implements _GetTasksForExpertRequestedEvent {
  const _$GetTasksForExpertRequestedEventImpl({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'TaskEvent.getTasksForExpertRequested(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksForExpertRequestedEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksForExpertRequestedEventImplCopyWith<
          _$GetTasksForExpertRequestedEventImpl>
      get copyWith => __$$GetTasksForExpertRequestedEventImplCopyWithImpl<
          _$GetTasksForExpertRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getTasksForExpertRequested(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getTasksForExpertRequested?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksForExpertRequested != null) {
      return getTasksForExpertRequested(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getTasksForExpertRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getTasksForExpertRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getTasksForExpertRequested != null) {
      return getTasksForExpertRequested(this);
    }
    return orElse();
  }
}

abstract class _GetTasksForExpertRequestedEvent implements TaskEvent {
  const factory _GetTasksForExpertRequestedEvent({required final int userId}) =
      _$GetTasksForExpertRequestedEventImpl;

  int get userId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTasksForExpertRequestedEventImplCopyWith<
          _$GetTasksForExpertRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetApplicationRequestedEventImplCopyWith<$Res> {
  factory _$$GetApplicationRequestedEventImplCopyWith(
          _$GetApplicationRequestedEventImpl value,
          $Res Function(_$GetApplicationRequestedEventImpl) then) =
      __$$GetApplicationRequestedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetApplicationRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetApplicationRequestedEventImpl>
    implements _$$GetApplicationRequestedEventImplCopyWith<$Res> {
  __$$GetApplicationRequestedEventImplCopyWithImpl(
      _$GetApplicationRequestedEventImpl _value,
      $Res Function(_$GetApplicationRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetApplicationRequestedEventImpl
    implements _GetApplicationRequestedEvent {
  const _$GetApplicationRequestedEventImpl();

  @override
  String toString() {
    return 'TaskEvent.getApplicationRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetApplicationRequestedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getApplicationRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getApplicationRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getApplicationRequested != null) {
      return getApplicationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getApplicationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getApplicationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getApplicationRequested != null) {
      return getApplicationRequested(this);
    }
    return orElse();
  }
}

abstract class _GetApplicationRequestedEvent implements TaskEvent {
  const factory _GetApplicationRequestedEvent() =
      _$GetApplicationRequestedEventImpl;
}

/// @nodoc
abstract class _$$GetRequestByIdRequestedEventImplCopyWith<$Res> {
  factory _$$GetRequestByIdRequestedEventImplCopyWith(
          _$GetRequestByIdRequestedEventImpl value,
          $Res Function(_$GetRequestByIdRequestedEventImpl) then) =
      __$$GetRequestByIdRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetRequestByIdRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$GetRequestByIdRequestedEventImpl>
    implements _$$GetRequestByIdRequestedEventImplCopyWith<$Res> {
  __$$GetRequestByIdRequestedEventImplCopyWithImpl(
      _$GetRequestByIdRequestedEventImpl _value,
      $Res Function(_$GetRequestByIdRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetRequestByIdRequestedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetRequestByIdRequestedEventImpl
    implements _GetRequestByIdRequestedEvent {
  const _$GetRequestByIdRequestedEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.getRequestByIdRequested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequestByIdRequestedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRequestByIdRequestedEventImplCopyWith<
          _$GetRequestByIdRequestedEventImpl>
      get copyWith => __$$GetRequestByIdRequestedEventImplCopyWithImpl<
          _$GetRequestByIdRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getRequestByIdRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getRequestByIdRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getRequestByIdRequested != null) {
      return getRequestByIdRequested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getRequestByIdRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getRequestByIdRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getRequestByIdRequested != null) {
      return getRequestByIdRequested(this);
    }
    return orElse();
  }
}

abstract class _GetRequestByIdRequestedEvent implements TaskEvent {
  const factory _GetRequestByIdRequestedEvent({required final int id}) =
      _$GetRequestByIdRequestedEventImpl;

  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRequestByIdRequestedEventImplCopyWith<
          _$GetRequestByIdRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRequestByIdExpertRequestedEventImplCopyWith<$Res> {
  factory _$$GetRequestByIdExpertRequestedEventImplCopyWith(
          _$GetRequestByIdExpertRequestedEventImpl value,
          $Res Function(_$GetRequestByIdExpertRequestedEventImpl) then) =
      __$$GetRequestByIdExpertRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetRequestByIdExpertRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res,
        _$GetRequestByIdExpertRequestedEventImpl>
    implements _$$GetRequestByIdExpertRequestedEventImplCopyWith<$Res> {
  __$$GetRequestByIdExpertRequestedEventImplCopyWithImpl(
      _$GetRequestByIdExpertRequestedEventImpl _value,
      $Res Function(_$GetRequestByIdExpertRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetRequestByIdExpertRequestedEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetRequestByIdExpertRequestedEventImpl
    implements _GetRequestByIdExpertRequestedEvent {
  const _$GetRequestByIdExpertRequestedEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.getRequestByIdExpertRequested(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequestByIdExpertRequestedEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRequestByIdExpertRequestedEventImplCopyWith<
          _$GetRequestByIdExpertRequestedEventImpl>
      get copyWith => __$$GetRequestByIdExpertRequestedEventImplCopyWithImpl<
          _$GetRequestByIdExpertRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return getRequestByIdExpertRequested(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return getRequestByIdExpertRequested?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (getRequestByIdExpertRequested != null) {
      return getRequestByIdExpertRequested(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return getRequestByIdExpertRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return getRequestByIdExpertRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (getRequestByIdExpertRequested != null) {
      return getRequestByIdExpertRequested(this);
    }
    return orElse();
  }
}

abstract class _GetRequestByIdExpertRequestedEvent implements TaskEvent {
  const factory _GetRequestByIdExpertRequestedEvent({required final int id}) =
      _$GetRequestByIdExpertRequestedEventImpl;

  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRequestByIdExpertRequestedEventImplCopyWith<
          _$GetRequestByIdExpertRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteExpertRequestedEventImplCopyWith<$Res> {
  factory _$$InviteExpertRequestedEventImplCopyWith(
          _$InviteExpertRequestedEventImpl value,
          $Res Function(_$InviteExpertRequestedEventImpl) then) =
      __$$InviteExpertRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int expertId, int requestId});
}

/// @nodoc
class __$$InviteExpertRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$InviteExpertRequestedEventImpl>
    implements _$$InviteExpertRequestedEventImplCopyWith<$Res> {
  __$$InviteExpertRequestedEventImplCopyWithImpl(
      _$InviteExpertRequestedEventImpl _value,
      $Res Function(_$InviteExpertRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expertId = null,
    Object? requestId = null,
  }) {
    return _then(_$InviteExpertRequestedEventImpl(
      expertId: null == expertId
          ? _value.expertId
          : expertId // ignore: cast_nullable_to_non_nullable
              as int,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InviteExpertRequestedEventImpl implements _InviteExpertRequestedEvent {
  const _$InviteExpertRequestedEventImpl(
      {required this.expertId, required this.requestId});

  @override
  final int expertId;
  @override
  final int requestId;

  @override
  String toString() {
    return 'TaskEvent.inviteExpertRequested(expertId: $expertId, requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteExpertRequestedEventImpl &&
            (identical(other.expertId, expertId) ||
                other.expertId == expertId) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, expertId, requestId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteExpertRequestedEventImplCopyWith<_$InviteExpertRequestedEventImpl>
      get copyWith => __$$InviteExpertRequestedEventImplCopyWithImpl<
          _$InviteExpertRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return inviteExpertRequested(expertId, requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return inviteExpertRequested?.call(expertId, requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (inviteExpertRequested != null) {
      return inviteExpertRequested(expertId, requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return inviteExpertRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return inviteExpertRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (inviteExpertRequested != null) {
      return inviteExpertRequested(this);
    }
    return orElse();
  }
}

abstract class _InviteExpertRequestedEvent implements TaskEvent {
  const factory _InviteExpertRequestedEvent(
      {required final int expertId,
      required final int requestId}) = _$InviteExpertRequestedEventImpl;

  int get expertId;
  int get requestId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteExpertRequestedEventImplCopyWith<_$InviteExpertRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InviteExpertsRequestedEventImplCopyWith<$Res> {
  factory _$$InviteExpertsRequestedEventImplCopyWith(
          _$InviteExpertsRequestedEventImpl value,
          $Res Function(_$InviteExpertsRequestedEventImpl) then) =
      __$$InviteExpertsRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> userIds, TaskModel request});
}

/// @nodoc
class __$$InviteExpertsRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$InviteExpertsRequestedEventImpl>
    implements _$$InviteExpertsRequestedEventImplCopyWith<$Res> {
  __$$InviteExpertsRequestedEventImplCopyWithImpl(
      _$InviteExpertsRequestedEventImpl _value,
      $Res Function(_$InviteExpertsRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? request = null,
  }) {
    return _then(_$InviteExpertsRequestedEventImpl(
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$InviteExpertsRequestedEventImpl
    implements _InviteExpertsRequestedEvent {
  const _$InviteExpertsRequestedEventImpl(
      {required final List<int> userIds, required this.request})
      : _userIds = userIds;

  final List<int> _userIds;
  @override
  List<int> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  final TaskModel request;

  @override
  String toString() {
    return 'TaskEvent.inviteExpertsRequested(userIds: $userIds, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteExpertsRequestedEventImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userIds), request);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteExpertsRequestedEventImplCopyWith<_$InviteExpertsRequestedEventImpl>
      get copyWith => __$$InviteExpertsRequestedEventImplCopyWithImpl<
          _$InviteExpertsRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return inviteExpertsRequested(userIds, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return inviteExpertsRequested?.call(userIds, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (inviteExpertsRequested != null) {
      return inviteExpertsRequested(userIds, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return inviteExpertsRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return inviteExpertsRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (inviteExpertsRequested != null) {
      return inviteExpertsRequested(this);
    }
    return orElse();
  }
}

abstract class _InviteExpertsRequestedEvent implements TaskEvent {
  const factory _InviteExpertsRequestedEvent(
      {required final List<int> userIds,
      required final TaskModel request}) = _$InviteExpertsRequestedEventImpl;

  List<int> get userIds;
  TaskModel get request;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InviteExpertsRequestedEventImplCopyWith<_$InviteExpertsRequestedEventImpl>
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
    extends _$TaskEventCopyWithImpl<$Res, _$StartChatRequestedEventImpl>
    implements _$$StartChatRequestedEventImplCopyWith<$Res> {
  __$$StartChatRequestedEventImplCopyWithImpl(
      _$StartChatRequestedEventImpl _value,
      $Res Function(_$StartChatRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
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
    return 'TaskEvent.startChat(userId: $userId)';
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

  /// Create a copy of TaskEvent
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
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return startChat(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return startChat?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
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
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return startChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return startChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (startChat != null) {
      return startChat(this);
    }
    return orElse();
  }
}

abstract class _StartChatRequestedEvent implements TaskEvent {
  const factory _StartChatRequestedEvent({required final int userId}) =
      _$StartChatRequestedEventImpl;

  int get userId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartChatRequestedEventImplCopyWith<_$StartChatRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartChatTaskRequestedEventImplCopyWith<$Res> {
  factory _$$StartChatTaskRequestedEventImplCopyWith(
          _$StartChatTaskRequestedEventImpl value,
          $Res Function(_$StartChatTaskRequestedEventImpl) then) =
      __$$StartChatTaskRequestedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, int applicationId});
}

/// @nodoc
class __$$StartChatTaskRequestedEventImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$StartChatTaskRequestedEventImpl>
    implements _$$StartChatTaskRequestedEventImplCopyWith<$Res> {
  __$$StartChatTaskRequestedEventImplCopyWithImpl(
      _$StartChatTaskRequestedEventImpl _value,
      $Res Function(_$StartChatTaskRequestedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? applicationId = null,
  }) {
    return _then(_$StartChatTaskRequestedEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      applicationId: null == applicationId
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartChatTaskRequestedEventImpl
    implements _StartChatTaskRequestedEvent {
  const _$StartChatTaskRequestedEventImpl(
      {required this.userId, required this.applicationId});

  @override
  final int userId;
  @override
  final int applicationId;

  @override
  String toString() {
    return 'TaskEvent.startChatTask(userId: $userId, applicationId: $applicationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartChatTaskRequestedEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.applicationId, applicationId) ||
                other.applicationId == applicationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, applicationId);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartChatTaskRequestedEventImplCopyWith<_$StartChatTaskRequestedEventImpl>
      get copyWith => __$$StartChatTaskRequestedEventImplCopyWithImpl<
          _$StartChatTaskRequestedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchTaskRequest request, int currentUserId)
        fetchExpertRequested,
    required TResult Function(CreateTaskRequest request) createTask,
    required TResult Function(int expertId, CreateTaskRequest request)
        createInviteTask,
    required TResult Function(List<int> expertIds, CreateTaskRequest request)
        createTaskInviteExperts,
    required TResult Function() getIndustries,
    required TResult Function(int id) getSubindustries,
    required TResult Function(int id) getFunctions,
    required TResult Function(int id) getSubfunctions,
    required TResult Function(TaskApplicationRequest request)
        sendApplcationRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertRequested,
    required TResult Function(SearchTaskRequest request, int currentUserId)
        getTasksExpertNextPage,
    required TResult Function() getTasksCustomerRequested,
    required TResult Function(int userId) getTasksForExpertRequested,
    required TResult Function() getApplicationRequested,
    required TResult Function(int id) getRequestByIdRequested,
    required TResult Function(int id) getRequestByIdExpertRequested,
    required TResult Function(int expertId, int requestId)
        inviteExpertRequested,
    required TResult Function(List<int> userIds, TaskModel request)
        inviteExpertsRequested,
    required TResult Function(int userId) startChat,
    required TResult Function(int userId, int applicationId) startChatTask,
  }) {
    return startChatTask(userId, applicationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult? Function(CreateTaskRequest request)? createTask,
    TResult? Function(int expertId, CreateTaskRequest request)?
        createInviteTask,
    TResult? Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult? Function()? getIndustries,
    TResult? Function(int id)? getSubindustries,
    TResult? Function(int id)? getFunctions,
    TResult? Function(int id)? getSubfunctions,
    TResult? Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult? Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult? Function()? getTasksCustomerRequested,
    TResult? Function(int userId)? getTasksForExpertRequested,
    TResult? Function()? getApplicationRequested,
    TResult? Function(int id)? getRequestByIdRequested,
    TResult? Function(int id)? getRequestByIdExpertRequested,
    TResult? Function(int expertId, int requestId)? inviteExpertRequested,
    TResult? Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult? Function(int userId)? startChat,
    TResult? Function(int userId, int applicationId)? startChatTask,
  }) {
    return startChatTask?.call(userId, applicationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchTaskRequest request, int currentUserId)?
        fetchExpertRequested,
    TResult Function(CreateTaskRequest request)? createTask,
    TResult Function(int expertId, CreateTaskRequest request)? createInviteTask,
    TResult Function(List<int> expertIds, CreateTaskRequest request)?
        createTaskInviteExperts,
    TResult Function()? getIndustries,
    TResult Function(int id)? getSubindustries,
    TResult Function(int id)? getFunctions,
    TResult Function(int id)? getSubfunctions,
    TResult Function(TaskApplicationRequest request)? sendApplcationRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertRequested,
    TResult Function(SearchTaskRequest request, int currentUserId)?
        getTasksExpertNextPage,
    TResult Function()? getTasksCustomerRequested,
    TResult Function(int userId)? getTasksForExpertRequested,
    TResult Function()? getApplicationRequested,
    TResult Function(int id)? getRequestByIdRequested,
    TResult Function(int id)? getRequestByIdExpertRequested,
    TResult Function(int expertId, int requestId)? inviteExpertRequested,
    TResult Function(List<int> userIds, TaskModel request)?
        inviteExpertsRequested,
    TResult Function(int userId)? startChat,
    TResult Function(int userId, int applicationId)? startChatTask,
    required TResult orElse(),
  }) {
    if (startChatTask != null) {
      return startChatTask(userId, applicationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchExpertRequestedEvent value)
        fetchExpertRequested,
    required TResult Function(_CreateTaskEvent value) createTask,
    required TResult Function(_CreateInviteTaskEvent value) createInviteTask,
    required TResult Function(_CreateTaskInviteExpertsEvent value)
        createTaskInviteExperts,
    required TResult Function(_GetIndustriesRequestedEvent value) getIndustries,
    required TResult Function(_GetSubindustriesRequestedEvent value)
        getSubindustries,
    required TResult Function(_GetFunctionsRequestedEvent value) getFunctions,
    required TResult Function(_GetSubfunctionsRequestedEvent value)
        getSubfunctions,
    required TResult Function(_SendApplicationRequestedEvent value)
        sendApplcationRequested,
    required TResult Function(_GetTasksExpertRequestedEvent value)
        getTasksExpertRequested,
    required TResult Function(_GetTasksExpertNextPageEvent value)
        getTasksExpertNextPage,
    required TResult Function(_GetTasksCustomerRequestedEvent value)
        getTasksCustomerRequested,
    required TResult Function(_GetTasksForExpertRequestedEvent value)
        getTasksForExpertRequested,
    required TResult Function(_GetApplicationRequestedEvent value)
        getApplicationRequested,
    required TResult Function(_GetRequestByIdRequestedEvent value)
        getRequestByIdRequested,
    required TResult Function(_GetRequestByIdExpertRequestedEvent value)
        getRequestByIdExpertRequested,
    required TResult Function(_InviteExpertRequestedEvent value)
        inviteExpertRequested,
    required TResult Function(_InviteExpertsRequestedEvent value)
        inviteExpertsRequested,
    required TResult Function(_StartChatRequestedEvent value) startChat,
    required TResult Function(_StartChatTaskRequestedEvent value) startChatTask,
  }) {
    return startChatTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult? Function(_CreateTaskEvent value)? createTask,
    TResult? Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult? Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult? Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult? Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult? Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult? Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult? Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult? Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult? Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult? Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult? Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult? Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult? Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult? Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult? Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult? Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult? Function(_StartChatRequestedEvent value)? startChat,
    TResult? Function(_StartChatTaskRequestedEvent value)? startChatTask,
  }) {
    return startChatTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchExpertRequestedEvent value)? fetchExpertRequested,
    TResult Function(_CreateTaskEvent value)? createTask,
    TResult Function(_CreateInviteTaskEvent value)? createInviteTask,
    TResult Function(_CreateTaskInviteExpertsEvent value)?
        createTaskInviteExperts,
    TResult Function(_GetIndustriesRequestedEvent value)? getIndustries,
    TResult Function(_GetSubindustriesRequestedEvent value)? getSubindustries,
    TResult Function(_GetFunctionsRequestedEvent value)? getFunctions,
    TResult Function(_GetSubfunctionsRequestedEvent value)? getSubfunctions,
    TResult Function(_SendApplicationRequestedEvent value)?
        sendApplcationRequested,
    TResult Function(_GetTasksExpertRequestedEvent value)?
        getTasksExpertRequested,
    TResult Function(_GetTasksExpertNextPageEvent value)?
        getTasksExpertNextPage,
    TResult Function(_GetTasksCustomerRequestedEvent value)?
        getTasksCustomerRequested,
    TResult Function(_GetTasksForExpertRequestedEvent value)?
        getTasksForExpertRequested,
    TResult Function(_GetApplicationRequestedEvent value)?
        getApplicationRequested,
    TResult Function(_GetRequestByIdRequestedEvent value)?
        getRequestByIdRequested,
    TResult Function(_GetRequestByIdExpertRequestedEvent value)?
        getRequestByIdExpertRequested,
    TResult Function(_InviteExpertRequestedEvent value)? inviteExpertRequested,
    TResult Function(_InviteExpertsRequestedEvent value)?
        inviteExpertsRequested,
    TResult Function(_StartChatRequestedEvent value)? startChat,
    TResult Function(_StartChatTaskRequestedEvent value)? startChatTask,
    required TResult orElse(),
  }) {
    if (startChatTask != null) {
      return startChatTask(this);
    }
    return orElse();
  }
}

abstract class _StartChatTaskRequestedEvent implements TaskEvent {
  const factory _StartChatTaskRequestedEvent(
      {required final int userId,
      required final int applicationId}) = _$StartChatTaskRequestedEventImpl;

  int get userId;
  int get applicationId;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartChatTaskRequestedEventImplCopyWith<_$StartChatTaskRequestedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialStateImpl implements _InitialState {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'TaskState.initial()';
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _InitialState implements TaskState {
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
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'TaskState.loading()';
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _LoadingState implements TaskState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadingPageStateImplCopyWith<$Res> {
  factory _$$LoadingPageStateImplCopyWith(_$LoadingPageStateImpl value,
          $Res Function(_$LoadingPageStateImpl) then) =
      __$$LoadingPageStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingPageStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$LoadingPageStateImpl>
    implements _$$LoadingPageStateImplCopyWith<$Res> {
  __$$LoadingPageStateImplCopyWithImpl(_$LoadingPageStateImpl _value,
      $Res Function(_$LoadingPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingPageStateImpl implements _LoadingPageState {
  const _$LoadingPageStateImpl();

  @override
  String toString() {
    return 'TaskState.loadingPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingPageStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return loadingPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return loadingPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loadingPage != null) {
      return loadingPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return loadingPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loadingPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loadingPage != null) {
      return loadingPage(this);
    }
    return orElse();
  }
}

abstract class _LoadingPageState implements TaskState {
  const factory _LoadingPageState() = _$LoadingPageStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl();

  @override
  String toString() {
    return 'TaskState.success()';
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _SuccessState implements TaskState {
  const factory _SuccessState() = _$SuccessStateImpl;
}

/// @nodoc
abstract class _$$SuccessSendApplicationStateImplCopyWith<$Res> {
  factory _$$SuccessSendApplicationStateImplCopyWith(
          _$SuccessSendApplicationStateImpl value,
          $Res Function(_$SuccessSendApplicationStateImpl) then) =
      __$$SuccessSendApplicationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessSendApplicationStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessSendApplicationStateImpl>
    implements _$$SuccessSendApplicationStateImplCopyWith<$Res> {
  __$$SuccessSendApplicationStateImplCopyWithImpl(
      _$SuccessSendApplicationStateImpl _value,
      $Res Function(_$SuccessSendApplicationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessSendApplicationStateImpl
    implements _SuccessSendApplicationState {
  const _$SuccessSendApplicationStateImpl();

  @override
  String toString() {
    return 'TaskState.successSendApplication()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSendApplicationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successSendApplication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successSendApplication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successSendApplication != null) {
      return successSendApplication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successSendApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successSendApplication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successSendApplication != null) {
      return successSendApplication(this);
    }
    return orElse();
  }
}

abstract class _SuccessSendApplicationState implements TaskState {
  const factory _SuccessSendApplicationState() =
      _$SuccessSendApplicationStateImpl;
}

/// @nodoc
abstract class _$$SuccessExpertStateImplCopyWith<$Res> {
  factory _$$SuccessExpertStateImplCopyWith(_$SuccessExpertStateImpl value,
          $Res Function(_$SuccessExpertStateImpl) then) =
      __$$SuccessExpertStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TasksResultModel tasksResult, List<ApplicationModel> application});
}

/// @nodoc
class __$$SuccessExpertStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessExpertStateImpl>
    implements _$$SuccessExpertStateImplCopyWith<$Res> {
  __$$SuccessExpertStateImplCopyWithImpl(_$SuccessExpertStateImpl _value,
      $Res Function(_$SuccessExpertStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasksResult = null,
    Object? application = null,
  }) {
    return _then(_$SuccessExpertStateImpl(
      tasksResult: null == tasksResult
          ? _value.tasksResult
          : tasksResult // ignore: cast_nullable_to_non_nullable
              as TasksResultModel,
      application: null == application
          ? _value._application
          : application // ignore: cast_nullable_to_non_nullable
              as List<ApplicationModel>,
    ));
  }
}

/// @nodoc

class _$SuccessExpertStateImpl implements _SuccessExpertState {
  const _$SuccessExpertStateImpl(
      {required this.tasksResult,
      required final List<ApplicationModel> application})
      : _application = application;

  @override
  final TasksResultModel tasksResult;
  final List<ApplicationModel> _application;
  @override
  List<ApplicationModel> get application {
    if (_application is EqualUnmodifiableListView) return _application;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_application);
  }

  @override
  String toString() {
    return 'TaskState.successExpertSearch(tasksResult: $tasksResult, application: $application)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessExpertStateImpl &&
            (identical(other.tasksResult, tasksResult) ||
                other.tasksResult == tasksResult) &&
            const DeepCollectionEquality()
                .equals(other._application, _application));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasksResult,
      const DeepCollectionEquality().hash(_application));

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessExpertStateImplCopyWith<_$SuccessExpertStateImpl> get copyWith =>
      __$$SuccessExpertStateImplCopyWithImpl<_$SuccessExpertStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successExpertSearch(tasksResult, application);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successExpertSearch?.call(tasksResult, application);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successExpertSearch != null) {
      return successExpertSearch(tasksResult, application);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successExpertSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successExpertSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successExpertSearch != null) {
      return successExpertSearch(this);
    }
    return orElse();
  }
}

abstract class _SuccessExpertState implements TaskState {
  const factory _SuccessExpertState(
          {required final TasksResultModel tasksResult,
          required final List<ApplicationModel> application}) =
      _$SuccessExpertStateImpl;

  TasksResultModel get tasksResult;
  List<ApplicationModel> get application;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessExpertStateImplCopyWith<_$SuccessExpertStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCustomerSearchStateImplCopyWith<$Res> {
  factory _$$SuccessCustomerSearchStateImplCopyWith(
          _$SuccessCustomerSearchStateImpl value,
          $Res Function(_$SuccessCustomerSearchStateImpl) then) =
      __$$SuccessCustomerSearchStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TaskModel> publicResult,
      List<TaskModel> closedResult,
      List<TaskModel> result});
}

/// @nodoc
class __$$SuccessCustomerSearchStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessCustomerSearchStateImpl>
    implements _$$SuccessCustomerSearchStateImplCopyWith<$Res> {
  __$$SuccessCustomerSearchStateImplCopyWithImpl(
      _$SuccessCustomerSearchStateImpl _value,
      $Res Function(_$SuccessCustomerSearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicResult = null,
    Object? closedResult = null,
    Object? result = null,
  }) {
    return _then(_$SuccessCustomerSearchStateImpl(
      publicResult: null == publicResult
          ? _value._publicResult
          : publicResult // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      closedResult: null == closedResult
          ? _value._closedResult
          : closedResult // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<TaskModel>,
    ));
  }
}

/// @nodoc

class _$SuccessCustomerSearchStateImpl implements _SuccessCustomerSearchState {
  const _$SuccessCustomerSearchStateImpl(
      {required final List<TaskModel> publicResult,
      required final List<TaskModel> closedResult,
      required final List<TaskModel> result})
      : _publicResult = publicResult,
        _closedResult = closedResult,
        _result = result;

  final List<TaskModel> _publicResult;
  @override
  List<TaskModel> get publicResult {
    if (_publicResult is EqualUnmodifiableListView) return _publicResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_publicResult);
  }

  final List<TaskModel> _closedResult;
  @override
  List<TaskModel> get closedResult {
    if (_closedResult is EqualUnmodifiableListView) return _closedResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_closedResult);
  }

  final List<TaskModel> _result;
  @override
  List<TaskModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'TaskState.successCustomerSearch(publicResult: $publicResult, closedResult: $closedResult, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCustomerSearchStateImpl &&
            const DeepCollectionEquality()
                .equals(other._publicResult, _publicResult) &&
            const DeepCollectionEquality()
                .equals(other._closedResult, _closedResult) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_publicResult),
      const DeepCollectionEquality().hash(_closedResult),
      const DeepCollectionEquality().hash(_result));

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCustomerSearchStateImplCopyWith<_$SuccessCustomerSearchStateImpl>
      get copyWith => __$$SuccessCustomerSearchStateImplCopyWithImpl<
          _$SuccessCustomerSearchStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successCustomerSearch(publicResult, closedResult, result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successCustomerSearch?.call(publicResult, closedResult, result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successCustomerSearch != null) {
      return successCustomerSearch(publicResult, closedResult, result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successCustomerSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successCustomerSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successCustomerSearch != null) {
      return successCustomerSearch(this);
    }
    return orElse();
  }
}

abstract class _SuccessCustomerSearchState implements TaskState {
  const factory _SuccessCustomerSearchState(
          {required final List<TaskModel> publicResult,
          required final List<TaskModel> closedResult,
          required final List<TaskModel> result}) =
      _$SuccessCustomerSearchStateImpl;

  List<TaskModel> get publicResult;
  List<TaskModel> get closedResult;
  List<TaskModel> get result;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessCustomerSearchStateImplCopyWith<_$SuccessCustomerSearchStateImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessIndustriesStateImpl>
    implements _$$SuccessIndustriesStateImplCopyWith<$Res> {
  __$$SuccessIndustriesStateImplCopyWithImpl(
      _$SuccessIndustriesStateImpl _value,
      $Res Function(_$SuccessIndustriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.successGetIndustries(industries: $industries)';
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

  /// Create a copy of TaskState
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _SuccessIndustriesState implements TaskState {
  const factory _SuccessIndustriesState(
          {required final List<ClassificatorModel> industries}) =
      _$SuccessIndustriesStateImpl;

  List<ClassificatorModel> get industries;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessSubindustriesStateImpl>
    implements _$$SuccessSubindustriesStateImplCopyWith<$Res> {
  __$$SuccessSubindustriesStateImplCopyWithImpl(
      _$SuccessSubindustriesStateImpl _value,
      $Res Function(_$SuccessSubindustriesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.successGetSubindustries(subindustries: $subindustries, functions: $functions, subfunctions: $subfunctions)';
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

  /// Create a copy of TaskState
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _SuccessSubindustriesState implements TaskState {
  const factory _SuccessSubindustriesState(
          {required final List<ClassificatorModel> subindustries,
          required final List<ClassificatorModel> functions,
          required final List<ClassificatorModel> subfunctions}) =
      _$SuccessSubindustriesStateImpl;

  List<ClassificatorModel> get subindustries;
  List<ClassificatorModel> get functions;
  List<ClassificatorModel> get subfunctions;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessFunctionsStateImpl>
    implements _$$SuccessFunctionsStateImplCopyWith<$Res> {
  __$$SuccessFunctionsStateImplCopyWithImpl(_$SuccessFunctionsStateImpl _value,
      $Res Function(_$SuccessFunctionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.successGetFunctions(functions: $functions)';
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

  /// Create a copy of TaskState
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _SuccessFunctionsState implements TaskState {
  const factory _SuccessFunctionsState(
          {required final List<ClassificatorModel> functions}) =
      _$SuccessFunctionsStateImpl;

  List<ClassificatorModel> get functions;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessSubfunctionsStateImpl>
    implements _$$SuccessSubfunctionsStateImplCopyWith<$Res> {
  __$$SuccessSubfunctionsStateImplCopyWithImpl(
      _$SuccessSubfunctionsStateImpl _value,
      $Res Function(_$SuccessSubfunctionsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.successGetSubfunctions(subfunctions: $subfunctions)';
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

  /// Create a copy of TaskState
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _SuccessSubfunctionsState implements TaskState {
  const factory _SuccessSubfunctionsState(
          {required final List<ClassificatorModel> subfunctions}) =
      _$SuccessSubfunctionsStateImpl;

  List<ClassificatorModel> get subfunctions;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSubfunctionsStateImplCopyWith<_$SuccessSubfunctionsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSingleRequestStateImplCopyWith<$Res> {
  factory _$$SuccessSingleRequestStateImplCopyWith(
          _$SuccessSingleRequestStateImpl value,
          $Res Function(_$SuccessSingleRequestStateImpl) then) =
      __$$SuccessSingleRequestStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskModel task});
}

/// @nodoc
class __$$SuccessSingleRequestStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessSingleRequestStateImpl>
    implements _$$SuccessSingleRequestStateImplCopyWith<$Res> {
  __$$SuccessSingleRequestStateImplCopyWithImpl(
      _$SuccessSingleRequestStateImpl _value,
      $Res Function(_$SuccessSingleRequestStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SuccessSingleRequestStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskModel,
    ));
  }
}

/// @nodoc

class _$SuccessSingleRequestStateImpl implements _SuccessSingleRequestState {
  const _$SuccessSingleRequestStateImpl({required this.task});

  @override
  final TaskModel task;

  @override
  String toString() {
    return 'TaskState.successSingleRequest(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSingleRequestStateImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSingleRequestStateImplCopyWith<_$SuccessSingleRequestStateImpl>
      get copyWith => __$$SuccessSingleRequestStateImplCopyWithImpl<
          _$SuccessSingleRequestStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return successSingleRequest(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return successSingleRequest?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (successSingleRequest != null) {
      return successSingleRequest(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return successSingleRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return successSingleRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (successSingleRequest != null) {
      return successSingleRequest(this);
    }
    return orElse();
  }
}

abstract class _SuccessSingleRequestState implements TaskState {
  const factory _SuccessSingleRequestState({required final TaskModel task}) =
      _$SuccessSingleRequestStateImpl;

  TaskModel get task;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessSingleRequestStateImplCopyWith<_$SuccessSingleRequestStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddSuccessStateImplCopyWith<$Res> {
  factory _$$AddSuccessStateImplCopyWith(_$AddSuccessStateImpl value,
          $Res Function(_$AddSuccessStateImpl) then) =
      __$$AddSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddSuccessStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$AddSuccessStateImpl>
    implements _$$AddSuccessStateImplCopyWith<$Res> {
  __$$AddSuccessStateImplCopyWithImpl(
      _$AddSuccessStateImpl _value, $Res Function(_$AddSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddSuccessStateImpl implements _AddSuccessState {
  const _$AddSuccessStateImpl();

  @override
  String toString() {
    return 'TaskState.addSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
    required TResult Function(int chatId) successStartChat,
    required TResult Function() error,
  }) {
    return addSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
    TResult? Function(int chatId)? successStartChat,
    TResult? Function()? error,
  }) {
    return addSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
    TResult Function(int chatId)? successStartChat,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
    required TResult Function(_SuccessStartChatState value) successStartChat,
    required TResult Function(_ErrorState value) error,
  }) {
    return addSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
    TResult? Function(_SuccessStartChatState value)? successStartChat,
    TResult? Function(_ErrorState value)? error,
  }) {
    return addSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
    TResult Function(_SuccessStartChatState value)? successStartChat,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (addSuccess != null) {
      return addSuccess(this);
    }
    return orElse();
  }
}

abstract class _AddSuccessState implements TaskState {
  const factory _AddSuccessState() = _$AddSuccessStateImpl;
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
    extends _$TaskStateCopyWithImpl<$Res, _$SuccessStartChatStateImpl>
    implements _$$SuccessStartChatStateImplCopyWith<$Res> {
  __$$SuccessStartChatStateImplCopyWithImpl(_$SuccessStartChatStateImpl _value,
      $Res Function(_$SuccessStartChatStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
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
    return 'TaskState.successStartChat(chatId: $chatId)';
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

  /// Create a copy of TaskState
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _SuccessStartChatState implements TaskState {
  const factory _SuccessStartChatState({required final int chatId}) =
      _$SuccessStartChatStateImpl;

  int get chatId;

  /// Create a copy of TaskState
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
    extends _$TaskStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl();

  @override
  String toString() {
    return 'TaskState.error()';
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
    required TResult Function() loadingPage,
    required TResult Function() success,
    required TResult Function() successSendApplication,
    required TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)
        successExpertSearch,
    required TResult Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)
        successCustomerSearch,
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
    required TResult Function(TaskModel task) successSingleRequest,
    required TResult Function() addSuccess,
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
    TResult? Function()? loadingPage,
    TResult? Function()? success,
    TResult? Function()? successSendApplication,
    TResult? Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult? Function(List<TaskModel> publicResult,
            List<TaskModel> closedResult, List<TaskModel> result)?
        successCustomerSearch,
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
    TResult? Function(TaskModel task)? successSingleRequest,
    TResult? Function()? addSuccess,
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
    TResult Function()? loadingPage,
    TResult Function()? success,
    TResult Function()? successSendApplication,
    TResult Function(
            TasksResultModel tasksResult, List<ApplicationModel> application)?
        successExpertSearch,
    TResult Function(List<TaskModel> publicResult, List<TaskModel> closedResult,
            List<TaskModel> result)?
        successCustomerSearch,
    TResult Function(List<ClassificatorModel> industries)? successGetIndustries,
    TResult Function(
            List<ClassificatorModel> subindustries,
            List<ClassificatorModel> functions,
            List<ClassificatorModel> subfunctions)?
        successGetSubindustries,
    TResult Function(List<ClassificatorModel> functions)? successGetFunctions,
    TResult Function(List<ClassificatorModel> subfunctions)?
        successGetSubfunctions,
    TResult Function(TaskModel task)? successSingleRequest,
    TResult Function()? addSuccess,
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
    required TResult Function(_LoadingPageState value) loadingPage,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_SuccessSendApplicationState value)
        successSendApplication,
    required TResult Function(_SuccessExpertState value) successExpertSearch,
    required TResult Function(_SuccessCustomerSearchState value)
        successCustomerSearch,
    required TResult Function(_SuccessIndustriesState value)
        successGetIndustries,
    required TResult Function(_SuccessSubindustriesState value)
        successGetSubindustries,
    required TResult Function(_SuccessFunctionsState value) successGetFunctions,
    required TResult Function(_SuccessSubfunctionsState value)
        successGetSubfunctions,
    required TResult Function(_SuccessSingleRequestState value)
        successSingleRequest,
    required TResult Function(_AddSuccessState value) addSuccess,
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
    TResult? Function(_LoadingPageState value)? loadingPage,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult? Function(_SuccessExpertState value)? successExpertSearch,
    TResult? Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult? Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult? Function(_SuccessSubindustriesState value)?
        successGetSubindustries,
    TResult? Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult? Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult? Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult? Function(_AddSuccessState value)? addSuccess,
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
    TResult Function(_LoadingPageState value)? loadingPage,
    TResult Function(_SuccessState value)? success,
    TResult Function(_SuccessSendApplicationState value)?
        successSendApplication,
    TResult Function(_SuccessExpertState value)? successExpertSearch,
    TResult Function(_SuccessCustomerSearchState value)? successCustomerSearch,
    TResult Function(_SuccessIndustriesState value)? successGetIndustries,
    TResult Function(_SuccessSubindustriesState value)? successGetSubindustries,
    TResult Function(_SuccessFunctionsState value)? successGetFunctions,
    TResult Function(_SuccessSubfunctionsState value)? successGetSubfunctions,
    TResult Function(_SuccessSingleRequestState value)? successSingleRequest,
    TResult Function(_AddSuccessState value)? addSuccess,
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

abstract class _ErrorState implements TaskState {
  const factory _ErrorState() = _$ErrorStateImpl;
}
