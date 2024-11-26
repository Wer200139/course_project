import 'dart:async';

import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/features/repositories/task/models/application_model.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/repositories/task/models/tasks_result_model.dart';
import 'package:clokwise/features/repositories/task/request/create_task_request.dart';
import 'package:clokwise/features/repositories/task/request/search_task_request.dart';
import 'package:clokwise/features/repositories/task/request/task_application_request.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class TaskRepository implements CwDisposable {
  final MainNetworkClient _mainNetworkClient;

  const TaskRepository({
    required MainNetworkClient mainNetworkClient,
  }) : _mainNetworkClient = mainNetworkClient;

  @override
  FutureOr<void> dispose() {}

  Future<int> createTaskRequest(CreateTaskRequest request) async {
    final response = await _mainNetworkClient.client.post(
      'company/create-expert-search-request/',
      data: request.toJson(), //TODO сделать инвайт
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final result = TaskModel.fromJson(response.data);

    return result.id;
  }

  Future<TasksResultModel> searchTaskRequest(SearchTaskRequest request) async {
    final response = await _mainNetworkClient.client.post(
      'expert/search-requests/',
      data: request.toJson(),
    );

    if (response.statusCode != 200) {
      throw Exception();
    }

    final result = TasksResultModel.fromJson(response.data);

    return result;
  }

  Future<List<ApplicationModel>> getApplcationRequest() async {
    final response = await _mainNetworkClient.client.get(
      'expert/get-applications/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.value);
    }

    final result = response.data
        .map<ApplicationModel>((message) => ApplicationModel.fromJson(message))
        .toList();

    return result;
  }

  Future<TaskModel> getSearchRequestByIdExpert({required int id}) async {
    final response = await _mainNetworkClient.client.get(
      'expert/get-search-request/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.value);
    }

    final result = TaskModel.fromJson(response.data);

    return result;
  }

  Future<TaskModel> getSearchRequestById({required int id}) async {
    final response = await _mainNetworkClient.client.get(
      'company/get-search-request/$id/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.value);
    }

    final result = TaskModel.fromJson(response.data);

    return result;
  }

  Future<void> inviteExpert({required int expert, required int request}) async {
    final response = await _mainNetworkClient.client.post(
      'company/invite-expert/',
      data: {
        'expert': expert,
        'request': request,
      },
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }
  }

  Future<void> inviteExperts({required List<int> experts, required int request}) async {
    final response = await _mainNetworkClient.client.post(
      'company/invite-experts/',
      data: {
        'experts': experts,
        'request': request,
      },
    );

    if (response.statusCode != 200) {
      throw Exception(response.data['error'].toString());
    }
  }

  Future<void> sendTaskApplcation(TaskApplicationRequest request) async {
    final response = await _mainNetworkClient.client.post(
      'expert/send-request-application/',
      data: request.toJson(),
    );

    if (response.statusCode != 200) {
      if (response.data.toString().contains('уже откликнулись')) {
        //TODO учесть локализацию
        throw Exception('ALREADY_DONE');
      }
      throw Exception(response.data.value);
    }
  }

  Future<List<TaskModel>> getCreatedRequest() async {
    final response = await _mainNetworkClient.client.get(
      'company/get-created-requests/',
    );

    if (response.statusCode != 200) {
      throw Exception(response.data.value);
    }

    final result = response.data
        .map<TaskModel>((message) => TaskModel.fromJson(message))
        .toList();

    return result;
  }
}
