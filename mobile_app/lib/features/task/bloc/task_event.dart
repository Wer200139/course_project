part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.fetchExpertRequested({required SearchTaskRequest request, required int currentUserId}) = _FetchExpertRequestedEvent;
  const factory TaskEvent.createTask({required CreateTaskRequest request}) = _CreateTaskEvent;
  const factory TaskEvent.createInviteTask({required int expertId, required CreateTaskRequest request}) = _CreateInviteTaskEvent;
  const factory TaskEvent.createTaskInviteExperts({required List<int> expertIds, required CreateTaskRequest request}) = _CreateTaskInviteExpertsEvent;
  const factory TaskEvent.getIndustries() = _GetIndustriesRequestedEvent;
  const factory TaskEvent.getSubindustries({required int id}) = _GetSubindustriesRequestedEvent;
  const factory TaskEvent.getFunctions({required int id}) = _GetFunctionsRequestedEvent;
  const factory TaskEvent.getSubfunctions({required int id}) = _GetSubfunctionsRequestedEvent;
  const factory TaskEvent.sendApplcationRequested({required TaskApplicationRequest request}) = _SendApplicationRequestedEvent;
  const factory TaskEvent.getTasksExpertRequested({required SearchTaskRequest request, required int currentUserId}) = _GetTasksExpertRequestedEvent;
  const factory TaskEvent.getTasksExpertNextPage({required SearchTaskRequest request, required int currentUserId}) = _GetTasksExpertNextPageEvent;
  const factory TaskEvent.getTasksCustomerRequested() = _GetTasksCustomerRequestedEvent;
  const factory TaskEvent.getTasksForExpertRequested({required int userId}) = _GetTasksForExpertRequestedEvent;
  const factory TaskEvent.getApplicationRequested() = _GetApplicationRequestedEvent;
  const factory TaskEvent.getRequestByIdRequested({required int id}) = _GetRequestByIdRequestedEvent;
  const factory TaskEvent.getRequestByIdExpertRequested({required int id}) = _GetRequestByIdExpertRequestedEvent;
  const factory TaskEvent.inviteExpertRequested({required int expertId, required int requestId}) = _InviteExpertRequestedEvent;
  const factory TaskEvent.inviteExpertsRequested({required List<int> userIds, required TaskModel request}) = _InviteExpertsRequestedEvent;
  const factory TaskEvent.startChat({required int userId}) = _StartChatRequestedEvent;
  const factory TaskEvent.startChatTask({required int userId, required int applicationId}) = _StartChatTaskRequestedEvent;
}
