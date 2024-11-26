import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/cw_refresh_indicator.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/customer/create_new_inquery.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/closed_task/closed_task_item.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/common_task/common_task_item.dart';
import 'package:clokwise/features/task/ui/widgets/customer/task_details/customer_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/customer/customer_tasks_switch.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerTaskBody extends StatefulWidget {
  const CustomerTaskBody({super.key});

  @override
  State<CustomerTaskBody> createState() => _CustomerTaskBodyState();
}

class _CustomerTaskBodyState extends State<CustomerTaskBody> {
  TasksStates _currentTab = TasksStates.common;

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
      )..add(const TaskEvent.getTasksCustomerRequested()),
      child: BlocConsumer<TaskBloc, TaskState>(
        listenWhen: (prev, cur) => cur.maybeMap(addSuccess: (_) => true, orElse: () => false),
        listener: (context, state) => state.maybeMap(
            addSuccess: (state) => BlocProvider.of<TaskBloc>(context).add(const TaskEvent.getTasksCustomerRequested()),
            orElse: () {
              return null;
            }),
        buildWhen: (context, state) => state.maybeMap(successCustomerSearch: (state) => true, orElse: () => false),
        builder: (context, state) => state.maybeMap(
          successCustomerSearch: (state) => CWRefreshIndicator(
            onRefresh: () => BlocProvider.of<TaskBloc>(context).add(
              const TaskEvent.getTasksCustomerRequested(),
            ),
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  sliver: SliverMainAxisGroup(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 12),
                            CustomerTasksSwitch(
                                changeTab: (state) => setState(() {
                                      _currentTab = state;
                                    }),
                                currentTab: _currentTab),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(height: 12),
                            CwElevatedButton(
                              heightStyle: CwButtonHeightEnum.standard,
                              text: 'Создать новый запрос',
                              block: true,
                              onTap: () => CustomNavigator.showModal(
                                context: context,
                                child: BlocProvider<TaskBloc>.value(
                                  value: BlocProvider.of<TaskBloc>(context)..add(const TaskEvent.getIndustries()),
                                  child: CreateNewInquery(
                                    isClosed: _currentTab.isClosed ? true : false,
                                  ),
                                ),
                              ),
                              leading: Icons.add,
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                      _currentTab.isCommon
                          ? SliverList.builder(
                              itemCount: state.publicResult.length,
                              itemBuilder: (context, index) => CommonTaskItem(
                                name: state.publicResult[index].name,
                                description: state.publicResult[index].description ?? '',
                                industry: state.publicResult[index].industry?.name ?? '',
                                subindustry: state.publicResult[index].subindustry?.name ?? '',
                                function: state.publicResult[index].function?.name ?? '',
                                subfunction: state.publicResult[index].subfunction?.name ?? '',
                                dateTimeCreated: state.publicResult[index].datetimeCreated,
                                dateTimeExpired: state.publicResult[index].datetimeExpire!,
                                avatars: state.publicResult[index].applicants.take(5).map((avatar) => avatar.avatar?.imageSmall).toList(),
                                count: state.publicResult[index].applicantsCount,
                                onTap: () => {
                                  CustomNavigator.showModal(
                                    context: context,
                                    child: CustomerTaskDetailsPage(
                                      id: state.publicResult[index].id,
                                    ),
                                  )
                                },
                              ),
                            )
                          : SliverList.builder(
                              itemCount: state.closedResult.length,
                              itemBuilder: (context, index) => ClosedTaskItem(
                                name: state.closedResult[index].name,
                                description: state.closedResult[index].description ?? '',
                                industry: state.closedResult[index].industry?.name ?? '',
                                subindustry: state.closedResult[index].subindustry?.name ?? '',
                                function: state.closedResult[index].function?.name ?? '',
                                subfunction: state.closedResult[index].subfunction?.name ?? '',
                                dateTimeCreated: state.closedResult[index].datetimeCreated,
                                dateTimeExpired: state.closedResult[index].datetimeExpire!,
                                onTap: () => {
                                  CustomNavigator.showModal(
                                    context: context,
                                    child: CustomerTaskDetailsPage(
                                      id: state.closedResult[index].id,
                                    ),
                                  )
                                },
                              ),
                            ),
                    ],
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
