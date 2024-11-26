import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/repositories/chats/chats_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/classificator_repository.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/task/request/search_task_request.dart';
import 'package:clokwise/features/repositories/task/task_repository.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/features/task/ui/widgets/expert/task_details/expert_task_details_page.dart';
import 'package:clokwise/features/task/ui/widgets/expert/expert_task_item.dart';
import 'package:clokwise/main.dart';
import 'package:clokwise/packages/components/cw_multi_dropdown.dart';
import 'package:clokwise/packages/components/search_widget.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:easy_infinite_pagination/easy_infinite_pagination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AllRequestWidget extends StatefulWidget {
  final int userId;

  const AllRequestWidget({super.key, required this.userId});

  @override
  State<AllRequestWidget> createState() => _AllRequestWidgetState();
}

class _AllRequestWidgetState extends State<AllRequestWidget> {
  final _searchExpertController = FormControl<String>(
    value: '',
  );

  final _industryController = ExpansionTileController();
  final _functionController = ExpansionTileController();

  String _industryTitle = '';
  String _functionTitle = '';

  List<ClassificatorModel> industryItems = [];
  List<ClassificatorModel> subindustryItems = [];
  List<ClassificatorModel> functionItems = [];
  List<ClassificatorModel> subfunctionItems = [];

  int industryId = 0;
  int subindustryId = 0;
  int functionId = 0;
  int subfunctionId = 0;
  int count = 0;

  bool isMax = false;

  bool _checkMatch(int? industryId, int? functionId) {
    if (industryId != null && functionId != null) {
      return classificatorsIds.any((pair) => pair[0] == industryId && pair[1] == functionId);
    }
    return false;
  }

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
            )
              ..add(const TaskEvent.getIndustries())
              ..add(
                TaskEvent.fetchExpertRequested(
                  currentUserId: widget.userId,
                  request:
                      const SearchTaskRequest(page: 1, industry: null, subindustry: null, function: null, subfunction: null, prompt: null),
                ),
              ),
        child: BlocConsumer<TaskBloc, TaskState>(
          listenWhen: (prev, cur) => cur.maybeMap(
              successGetIndustries: (_) => true,
              successGetSubindustries: (_) => true,
              successGetFunctions: (_) => true,
              successGetSubfunctions: (_) => true,
              orElse: () => false),
          listener: (context, state) => state.maybeMap(
              successGetIndustries: (state) => setState(() {
                    industryItems.clear();

                    for (var ind in state.industries) {
                      industryItems.add(ind);
                    }
                  }),
              successGetSubindustries: (state) => setState(() {
                    subindustryItems.clear();
                    functionItems.clear();
                    subfunctionItems.clear();

                    for (var subind in state.subindustries) {
                      subindustryItems.add(subind);
                    }

                    for (var func in state.functions) {
                      functionItems.add(func);
                    }

                    for (var subfunc in state.subfunctions) {
                      subfunctionItems.add(subfunc);
                    }
                  }),
              successGetFunctions: (state) => setState(() {
                    functionItems.clear();
                    for (var ind in state.functions) {
                      functionItems.add(ind);
                    }
                  }),
              successGetSubfunctions: (state) => setState(() {
                    subfunctionItems.clear();

                    for (var ind in state.subfunctions) {
                      subfunctionItems.add(ind);
                    }
                  }),
              successExpertSearch: (state) {
                int newCount = count;
                for (var res in state.tasksResult.results) {
                  if (res.creator.id == widget.userId) {
                    newCount--;
                  }
                }
                setState(() {
                  count = newCount;
                });
                return null;
              },
              orElse: () => {}),
          buildWhen: (context, state) => state.maybeMap(
            loading: (_) => true,
            error: (_) => true,
            successExpertSearch: (state) => true,
            successGetIndustries: (state) => false,
            successGetSubindustries: (state) => false,
            successGetFunctions: (state) => false,
            successGetSubfunctions: (state) => false,
            orElse: () => false,
          ),
          builder: (context, state) => state.maybeMap(
            loading: (state) => const PageLoadingIndicator(),
            successExpertSearch: (state) => CustomScrollView(
              slivers: [
                SliverMainAxisGroup(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(height: 12),
                          SearchWidget(
                            controller: _searchExpertController,
                            hasSpaceForError: false,
                            onTap: () => BlocProvider.of<TaskBloc>(context).add(
                              TaskEvent.getTasksExpertRequested(
                                currentUserId: widget.userId,
                                request: SearchTaskRequest(
                                    page: 1,
                                    industry: industryId > 0 ? industryId : null,
                                    subindustry: subindustryId > 0 ? subindustryId : null,
                                    function: functionId > 0 ? functionId : null,
                                    subfunction: subfunctionId > 0 ? subfunctionId : null,
                                    prompt: _searchExpertController.value!.isNotEmpty ? _searchExpertController.value : null),
                              ),
                            ),
                          ),
                          const SizedBox(height: 14),
                          CwMultiDropdown(
                            label: 'Отрасль',
                            title: _industryTitle,
                            controller: _industryController,
                            elements: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: industryItems.length,
                                itemBuilder: (context, index) => ExpansionTile(
                                  title: Text(
                                    industryItems[index].name,
                                    style: CwTextStyles.textField,
                                  ),
                                  onExpansionChanged: (expanded) {
                                    if (expanded) {
                                      if (industryId != industryItems[index].id) {
                                        BlocProvider.of<TaskBloc>(context).add(
                                          TaskEvent.getSubindustries(id: industryItems[index].id),
                                        );
                                      }

                                      setState(() {
                                        industryId = industryItems[index].id;
                                        _industryTitle = industryItems[index].name;
                                      });
                                    }
                                  },
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: subindustryItems.length,
                                      itemBuilder: (context, index) => ListTile(
                                        onTap: () {
                                          setState(() {
                                            if (subindustryId != subindustryItems[index].id) {
                                              BlocProvider.of<TaskBloc>(context).add(
                                                TaskEvent.getFunctions(id: subindustryItems[index].id),
                                              );
                                            }

                                            subindustryId = subindustryItems[index].id;
                                            _industryTitle = '${industryItems[index].name}, ${subindustryItems[index].name}';
                                            _industryController.collapse();
                                          });
                                        },
                                        title: Text(subindustryItems[index].name),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          CwMultiDropdown(
                            label: 'Функция',
                            title: _functionTitle,
                            controller: _functionController,
                            elements: [
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: functionItems.length,
                                itemBuilder: (context, index) => ExpansionTile(
                                  title: Text(
                                    functionItems[index].name,
                                    style: CwTextStyles.textField,
                                  ),
                                  onExpansionChanged: (expanded) {
                                    if (expanded) {
                                      if (functionId != functionItems[index].id) {
                                        BlocProvider.of<TaskBloc>(context).add(
                                          TaskEvent.getSubfunctions(id: functionItems[index].id),
                                        );
                                      }

                                      setState(() {
                                        functionId = functionItems[index].id;
                                        _functionTitle = functionItems[index].name;
                                      });
                                    }
                                  },
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemCount: subfunctionItems.length,
                                      itemBuilder: (context, index) => ListTile(
                                        onTap: () {
                                          setState(() {
                                            subfunctionId = subfunctionItems[index].id;
                                            _functionTitle = '${functionItems[index].name}, ${subfunctionItems[index].name}';
                                            _functionController.collapse();
                                          });
                                        },
                                        title: Text(subfunctionItems[index].name),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          BlocBuilder<TaskBloc, TaskState>(
                            buildWhen: (_, state) => state.maybeMap(successExpertSearch: (state) => true, orElse: () => false),
                            builder: (context, state) => state.maybeMap(
                              successExpertSearch: (state) => Column(
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Найдено ${state.tasksResult.count} запросов',
                                          style: CwTextStyles.nameTextComment,
                                        ),
                                        const SizedBox(width: 40),
                                        CwTextButton(
                                          text: 'Сбросить фильтры',
                                          icon: Icons.refresh,
                                          onTap: () => setState(() {
                                            industryId = 0;
                                            subindustryId = 0;
                                            functionId = 0;
                                            subfunctionId = 0;
                                            _industryTitle = '';
                                            _functionTitle = '';
                                            isMax = false;
                                            _searchExpertController.value = '';
                                            subindustryItems.clear();
                                            functionItems.clear();
                                            subfunctionItems.clear();
                                            BlocProvider.of<TaskBloc>(context).add(
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
                                            );
                                          }),
                                          primaryColor: CwColors.error,
                                          textStyle: CwTextStyles.errorTextField.merge(
                                            const TextStyle(fontSize: 14, color: CwColors.error),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              orElse: () => const SizedBox(),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                    ),
                    SliverInfiniteListView(
                      delegate: PaginationDelegate(
                        fetchDataOnStart: true,
                        hasReachedMax: isMax,
                        onFetchData: () => state.tasksResult.next != null
                            ? {
                                setState(() {
                                  isMax = false;
                                }),
                                BlocProvider.of<TaskBloc>(context).add(
                                  TaskEvent.getTasksExpertNextPage(
                                    currentUserId: widget.userId,
                                    request: SearchTaskRequest(
                                      page: int.parse(state.tasksResult.next!.substring(
                                        state.tasksResult.next!.lastIndexOf('page=') + 5,
                                      )),
                                      industry: industryId > 0 ? industryId : null,
                                      subindustry: subindustryId > 0 ? subindustryId : null,
                                      function: functionId > 0 ? functionId : null,
                                      subfunction: subfunctionId > 0 ? subfunctionId : null,
                                      prompt: _searchExpertController.value!.isNotEmpty ? _searchExpertController.value : null,
                                    ),
                                  ),
                                )
                              }
                            : setState(() {
                                isMax = true;
                              }),
                        itemCount: state.tasksResult.results.length,
                        itemBuilder: (context, index) => state.tasksResult.results[index].creator.id != widget.userId
                            ? ExpertTaskItem(
                                isMatch: _checkMatch(
                                    state.tasksResult.results[index].industry?.id, state.tasksResult.results[index].function?.id),
                                name: state.tasksResult.results[index].name,
                                description: state.tasksResult.results[index].description ?? '',
                                industry: state.tasksResult.results[index].industry?.name ?? '',
                                subindustry: state.tasksResult.results[index].subindustry?.name ?? '',
                                function: state.tasksResult.results[index].function?.name ?? '',
                                subfunction: state.tasksResult.results[index].subfunction?.name ?? '',
                                dateTime: state.tasksResult.results[index].datetimeCreated,
                                onTap: () => {
                                  CustomNavigator.showModal(
                                    context: context,
                                    child: BlocProvider(
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
                                      ),
                                      child: ExpertTaskDetailsPage(
                                        id: state.tasksResult.results[index].id,
                                      ),
                                    ),
                                  )
                                },
                              )
                            : const SizedBox(),
                      ),
                    )
                  ],
                ),
              ],
            ),
            orElse: () => const SizedBox(),
          ),
        ));
  }
}
