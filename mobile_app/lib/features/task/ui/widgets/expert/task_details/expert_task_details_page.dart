import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpertTaskDetailsPage extends StatelessWidget {
  final int id;

  const ExpertTaskDetailsPage({
    super.key,
    required this.id,
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
      )..add(TaskEvent.getRequestByIdExpertRequested(id: id)),
      child: const ExpertTaskDetailsBody(),
    );
  }
}
