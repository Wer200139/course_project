import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/closed_task/closed_task_detail_body.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/common_task/common_task_detail_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerTaskDetailsPage extends StatelessWidget {
  final int id;

  const CustomerTaskDetailsPage({
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskBloc>(
      create: (context) => TaskBloc(
        taskRepository: TaskRepository(
          mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
        ),
        snackBarRepository: CustomInjector.find<SnackBarRepository>(),
        classificatorRepository: ClassificatorRepository(
          mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
        ),
        chatRepository: ChatRepository(
          mainNetworkClient: CustomInjector.find<MainNetworkClient>(),
        ),
      )..add(TaskEvent.getRequestByIdRequested(id: id)),
      child: BlocBuilder<TaskBloc, TaskState>(
        buildWhen: (context, state) => state.maybeMap(
          successSingleRequest: (_) => true,
          orElse: () => false,
        ),
        builder: (context, state) => state.maybeMap(
          successSingleRequest: (state) =>
              state.task.type == TaskType.closed ? const ClosedTaskDetailsBody() : const CommonTaskDetailsBody(),
          orElse: () => SizedBox(),
        ),
      ),
    );
  }
}
