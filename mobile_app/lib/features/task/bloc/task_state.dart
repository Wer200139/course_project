part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _InitialState;

  const factory TaskState.loading() = _LoadingState;

  const factory TaskState.loadingPage() = _LoadingPageState;

  const factory TaskState.success() = _SuccessState;

  const factory TaskState.successSendApplication() = _SuccessSendApplicationState;

  const factory TaskState.successExpertSearch({required TasksResultModel tasksResult, required List<ApplicationModel> application}) = _SuccessExpertState;

  const factory TaskState.successCustomerSearch({required List<TaskModel> publicResult, required List<TaskModel> closedResult, required List<TaskModel> result}) = _SuccessCustomerSearchState;

  const factory TaskState.successGetIndustries({required List<ClassificatorModel> industries}) = _SuccessIndustriesState;

  const factory TaskState.successGetSubindustries({required List<ClassificatorModel> subindustries, required List<ClassificatorModel> functions, required List<ClassificatorModel> subfunctions}) = _SuccessSubindustriesState;

  const factory TaskState.successGetFunctions({required List<ClassificatorModel> functions}) = _SuccessFunctionsState;

  const factory TaskState.successGetSubfunctions({required List<ClassificatorModel> subfunctions}) = _SuccessSubfunctionsState;

  const factory TaskState.successSingleRequest({required TaskModel task}) = _SuccessSingleRequestState;

  const factory TaskState.addSuccess() = _AddSuccessState;

  const factory TaskState.successStartChat({required int chatId}) = _SuccessStartChatState;

  const factory TaskState.error() = _ErrorState;
}
