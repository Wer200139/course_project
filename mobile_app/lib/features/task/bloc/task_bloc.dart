import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/task/models/application_model.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/repositories/task/models/tasks_result_model.dart';
import 'package:clokwise/features/repositories/task/request/create_task_request.dart';
import 'package:clokwise/features/repositories/task/request/search_task_request.dart';
import 'package:clokwise/features/repositories/task/request/task_application_request.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_bloc.freezed.dart';

part 'task_event.dart';

part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;
  final SnackBarRepository _snackBarRepository;
  final ChatRepository _chatRepository;
  final ClassificatorRepository _classificatorRepository;

  TaskBloc({
    required TaskRepository taskRepository,
    required SnackBarRepository snackBarRepository,
    required ClassificatorRepository classificatorRepository,
    required ChatRepository chatRepository,
  })  : _taskRepository = taskRepository,
        _snackBarRepository = snackBarRepository,
        _classificatorRepository = classificatorRepository,
        _chatRepository = chatRepository,
        super(const TaskState.initial()) {
    on<TaskEvent>(
      (event, emit) => event.map(
        fetchExpertRequested: (event) => _onFetchExpertRequested(event, emit),
        createTask: (event) => _onCreateTask(event, emit),
        getIndustries: (event) => _onGetIndustriesRequested(emit),
        getSubindustries: (event) => _onGetSubindustriesRequested(event, emit),
        getFunctions: (event) => _onGetFunctionsRequested(event, emit),
        getSubfunctions: (event) => _onGetSubfunctionsRequested(event, emit),
        getTasksExpertRequested: (event) => _onGetTasksExpertRequested(event, emit),
        sendApplcationRequested: (event) => _onSendApplicationRequested(event, emit),
        getTasksCustomerRequested: (event) => _onGetTasksCustomerRequested(event, emit),
        getTasksForExpertRequested: (event) => _onGetTasksForExpertRequested(event, emit),
        getTasksExpertNextPage: (event) => _onGetTasksExpertNextPage(event, emit),
        getApplicationRequested: (event) => _onGetApplicationRequested(emit),
        inviteExpertRequested: (event) => _onInviteExpertRequested(event, emit),
        inviteExpertsRequested: (event) => _onInviteExpertsRequested(event, emit),
        createInviteTask: (event) => _onCreateInviteTask(event, emit),
        createTaskInviteExperts: (event) => _onCreateTaskInviteExperts(event, emit),
        getRequestByIdRequested: (event) => _onGetRequestById(event, emit),
        getRequestByIdExpertRequested: (event) => _onGetRequestByIdExpert(event, emit),
        startChat: (event) => _onStartChatRequested(event, emit),
        startChatTask: (event) => _onStartChatTaskRequested(event, emit),
      ),
    );
  }

  TasksResultModel? _tasksResult;
  List<ApplicationModel>? _application;

  @override
  Future<void> close() async {
    _taskRepository.dispose();

    return super.close();
  }

  Future<void> _onStartChatRequested(
    _StartChatRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      int chatId = await _chatRepository.startChatting(userId: event.userId);

      emit(TaskState.successStartChat(chatId: chatId));
    } catch (e) {
      String onlyNumber = e.toString().replaceAll("Exception: ", "");
      int number = int.parse(onlyNumber);

      emit(TaskState.successStartChat(chatId: number));
    }
  }

  Future<void> _onStartChatTaskRequested(
    _StartChatTaskRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      int chatId = await _chatRepository.startChattingTask(userId: event.userId, applicationId: event.applicationId);

      emit(TaskState.successStartChat(chatId: chatId));
    } catch (e) {
      String onlyNumber = e.toString().replaceAll("Exception: ", "");
      int number = int.parse(onlyNumber);

      emit(TaskState.successStartChat(chatId: number));
    }
  }

  Future<void> _onFetchExpertRequested(
    _FetchExpertRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loadingPage());

      final tasks = await _taskRepository.searchTaskRequest(event.request);
      final applications = await _taskRepository.getApplcationRequest();

      final filteredTasks = tasks.results.where((task) => task.creator.id != event.currentUserId).toList();

      final tasksResult = TasksResultModel(
        count: filteredTasks.length,
        next: tasks.next,
        previous: tasks.previous,
        results: filteredTasks,
      );

      emit(
        TaskState.successExpertSearch(
          tasksResult: tasksResult,
          application: applications,
        ),
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onGetRequestById(
    _GetRequestByIdRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loadingPage());

      final task = await _taskRepository.getSearchRequestById(id: event.id);

      emit(TaskState.successSingleRequest(task: task));
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onGetRequestByIdExpert(
    _GetRequestByIdExpertRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loadingPage());

      final task = await _taskRepository.getSearchRequestByIdExpert(id: event.id);

      emit(TaskState.successSingleRequest(task: task));
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onCreateTaskInviteExperts(
    _CreateTaskInviteExpertsEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final taskId = await _taskRepository.createTaskRequest(event.request);

      _taskRepository.inviteExperts(experts: event.expertIds, request: taskId);

      _snackBarRepository.addSuccess(text: 'Создан новый запрос и приглашены пользователи');
      emit(const TaskState.addSuccess());
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
    }
  }

  Future<void> _onInviteExpertsRequested(
    _InviteExpertsRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loading());

          _taskRepository.inviteExperts(experts: event.userIds, request: event.request.id);


      _snackBarRepository.addSuccess(text: 'Эксперты приглашены на задачу');
      emit(const TaskState.success());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onInviteExpertRequested(
    event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loading());

      await _taskRepository.inviteExpert(expert: event.expertId, request: event.requestId);

      _snackBarRepository.addSuccess(text: 'Эксперт приглашен на задачу');
      emit(const TaskState.success());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString().replaceAll(RegExp(r'Exception: '), ''));
    }
  }

  Future<void> _onGetApplicationRequested(
    Emitter<TaskState> emit,
  ) async {
    try {
      await state.mapOrNull(
        successExpertSearch: (state) async {
          final tasks = state.tasksResult;

          emit(const TaskState.loading());

          final response = await _taskRepository.getApplcationRequest();

          emit(
            TaskState.successExpertSearch(
              tasksResult: tasks,
              application: response,
            ),
          );
        },
      );
    } catch (e) {
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onGetTasksCustomerRequested(
    _GetTasksCustomerRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loading());

      final response = await _taskRepository.getCreatedRequest();

      final closedTasks = response.where((task) => task.type == TaskType.closed).toList();
      final publicTasks = response.where((task) => task.type == TaskType.public).toList();

      emit(TaskState.successCustomerSearch(
        closedResult: closedTasks,
        publicResult: publicTasks,
        result: response,
      ));
    } catch (e) {
      print(e.toString());
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onGetTasksForExpertRequested(
    _GetTasksForExpertRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loading());

      final response = await _taskRepository.getCreatedRequest();

      final filteredTasks = response.where((task) {
        return !task.applicants.any((appl) => appl.id == event.userId);
      }).toList();

      final closedTasks = filteredTasks.where((task) => task.type == TaskType.closed).toList();
      final publicTasks = filteredTasks.where((task) => task.type == TaskType.public).toList();

      emit(TaskState.successCustomerSearch(
        closedResult: closedTasks,
        publicResult: publicTasks,
        result: response,
      ));
    } catch (e) {
      print(e.toString());
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onSendApplicationRequested(
    _SendApplicationRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loading());

      await _taskRepository.sendTaskApplcation(event.request);

      _snackBarRepository.addSuccess(text: 'Отклик был отправлен');

      emit(const TaskState.successSendApplication());
    } catch (e) {
      if (e.toString().contains('ALREADY_DONE')) {
        _snackBarRepository.addWarning(text: 'Вы уже откликнулись на данный запрос');
      } else {
        _snackBarRepository.addError(text: e.toString());
      }
    }
  }

  Future<void> _onGetTasksExpertNextPage(
    _GetTasksExpertNextPageEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final tasks = _tasksResult;
      final application = _application;

      emit(const TaskState.loading());

      final response = await _taskRepository.searchTaskRequest(event.request);

      final filteredResponseTasks = response.results.where((task) => task.creator.id != event.currentUserId).toList();

      final combinedTasks = tasks!.results + filteredResponseTasks;
      final combinedCount = tasks.count + filteredResponseTasks.length;

      ///TODO лучше избавиться на бэке

      emit(
        TaskState.successExpertSearch(
          application: application!,
          tasksResult: TasksResultModel(count: combinedCount, next: response.next, previous: response.previous, results: combinedTasks),
        ),
      );
    } catch (e) {
      print(e.toString());
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onGetTasksExpertRequested(
    _GetTasksExpertRequestedEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      emit(const TaskState.loading());

      final response = await _taskRepository.searchTaskRequest(event.request);
      final application = await _taskRepository.getApplcationRequest();

      final filteredResponseTasks = response.results.where((task) => task.creator.id != event.currentUserId).toList();

      ///TODO лучше
      /// избавиться

      final tasksResult = TasksResultModel(
        count: filteredResponseTasks.length,
        next: response.next,
        previous: response.previous,
        results: filteredResponseTasks,
      );

      _application = application;

      emit(
        TaskState.successExpertSearch(
          tasksResult: tasksResult,
          application: application,
        ),
      );
    } catch (e) {
      print(e.toString());
      _snackBarRepository.addError(text: e.toString());
    }
  }

  Future<void> _onCreateInviteTask(
    _CreateInviteTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final taskId = await _taskRepository.createTaskRequest(event.request);

      await _taskRepository.inviteExpert(expert: event.expertId, request: taskId);

      _snackBarRepository.addSuccess(text: 'Создан новый запрос и приглашен пользователь');
      emit(const TaskState.addSuccess());
    } catch (e) {
      _snackBarRepository.addError(text: e.toString().replaceAll(RegExp(r'Exception: '), ''));
    }
  }

  Future<void> _onCreateTask(
    _CreateTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final response = await _taskRepository.createTaskRequest(event.request);

      _snackBarRepository.addSuccess(text: 'Создан новый запрос');

      emit(const TaskState.addSuccess());
    } catch (e) {
      _snackBarRepository.addError(text: 'Произошла ошибка');
    }
  }

  Future<void> _onGetIndustriesRequested(
    Emitter<TaskState> emit,
  ) async {
    try {
      final industries = await _classificatorRepository.getIndustries();

      emit(TaskState.successGetIndustries(industries: industries));
    } catch (e) {
      emit(const TaskState.error());
    }
  }

  Future<void> _onGetSubindustriesRequested(
    event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final subindustries = await _classificatorRepository.getChildrenClassificator(id: event.id);
      final functions = await _classificatorRepository.getAvailableFunctions(id: event.id);
      final subfunctions = <ClassificatorModel>[];

      for (final function in functions) {
        if (function.children != null) {
          subfunctions.addAll(function.children!);
        }
      }

      emit(TaskState.successGetSubindustries(subindustries: subindustries, functions: functions, subfunctions: subfunctions));
    } catch (e) {
      emit(const TaskState.error());
    }
  }

  Future<void> _onGetFunctionsRequested(
    event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final functions = await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(TaskState.successGetFunctions(functions: functions));
    } catch (e) {
      emit(const TaskState.error());
    }
  }

  Future<void> _onGetSubfunctionsRequested(
    event,
    Emitter<TaskState> emit,
  ) async {
    try {
      final subfunctions = await _classificatorRepository.getChildrenClassificator(id: event.id);

      emit(TaskState.successGetSubfunctions(subfunctions: subfunctions));
    } catch (e) {
      emit(const TaskState.error());
    }
  }
}
