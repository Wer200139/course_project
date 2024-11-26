import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/task/request/search_task_request.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/expert/expert_task_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationWidget extends StatefulWidget {
  final int userId;

  const ApplicationWidget({super.key, required this.userId});

  @override
  State<ApplicationWidget> createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
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
      )..add(
          TaskEvent.fetchExpertRequested(
            currentUserId: widget.userId,
            request: const SearchTaskRequest(
                page: 1,
                industry: null,
                subindustry: null,
                function: null,
                subfunction: null,
                prompt: null),
          ),
        ),
      child: BlocBuilder<TaskBloc, TaskState>(
        buildWhen: (context, state) => state.maybeMap(
            loading: (state) => true,
            successExpertSearch: (state) => true,
            error: (state) => true,
            successGetIndustries: (state) => false,
            successGetSubindustries: (state) => false,
            successGetFunctions: (state) => false,
            successGetSubfunctions: (state) => false,
            orElse: () => false),
        builder: (context, state) => state.maybeMap(
          loading: (_) => const PageLoadingIndicator(),
          successExpertSearch: (state) => CWRefreshIndicator(
            onRefresh: () => BlocProvider.of<TaskBloc>(context).add(
              const TaskEvent.getApplicationRequested(),
            ),
            child: CustomScrollView(
              slivers: [
                SliverList.builder(
                  itemCount: state.application.length,
                  itemBuilder: (context, index) => ExpertTaskItem(
                    name: state.application[index].request.name,
                    description:
                        state.application[index].request.description ?? '',
                    industry:
                        state.application[index].request.industry?.name ?? '',
                    subindustry:
                        state.application[index].request.subindustry?.name ??
                            '',
                    function:
                        state.application[index].request.function?.name ?? '',
                    subfunction:
                        state.application[index].request.subfunction?.name ??
                            '',
                    dateTime: state.application[index].request.datetimeCreated,
                    onTap: () => {
                      CustomNavigator.showModal(
                        context: context,
                        child: BlocProvider<TaskBloc>.value(
                          value: BlocProvider.of<TaskBloc>(context),
                          child: ExpertTaskDetailsPage(
                            id: state.application[index].request.id,
                          ),
                        ),
                      )
                    },
                  ),
                )
              ],
            ),
          ),
          orElse: () => const SizedBox(),
        ),
      ),
    );
  }
}
