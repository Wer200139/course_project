import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/repositories/task/request/create_task_request.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/checkbox.dart';
import 'package:clokwise/packages/components/cw_multi_dropdown.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateSearchTaskDialog extends StatefulWidget {
  final List<int> userIds;

  const CreateSearchTaskDialog({super.key, required this.userIds});

  @override
  State<CreateSearchTaskDialog> createState() => _CreateSearchTaskDialogState();
}

class _CreateSearchTaskDialogState extends State<CreateSearchTaskDialog> {
  final _nameController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _descriptionController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );

  final _industryController = ExpansionTileController();
  final _subindustryController = ExpansionTileController();
  final _functionController = ExpansionTileController();
  final _subfunctionController = ExpansionTileController();

  String _industryTitle = '';
  String _subindustryTitle = '';
  String _functionTitle = '';
  String _subfunctionTitle = '';

  List<ClassificatorModel> industryItems = [];
  List<ClassificatorModel> subindustryItems = [];
  List<ClassificatorModel> functionItems = [];
  List<ClassificatorModel> subfunctionItems = [];

  int industryId = 0;
  int subindustryId = 0;
  int functionId = 0;
  int subfunctionId = 0;

  bool isCommonTask = false;
  bool isFormReady = false;

  @override
  void initState() {
    BlocProvider.of<TaskBloc>(context).add(const TaskEvent.getIndustries());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        backgroundColor: Colors.white,
        insetPadding:
        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              BlocListener<TaskBloc, TaskState>(
                listenWhen: (prev, cur) => cur.maybeMap(
                    successGetIndustries: (_) => true,
                    successGetSubindustries: (_) => true,
                    successGetFunctions: (_) => true,
                    successGetSubfunctions: (_) => true,
                    addSuccess: (_) => true,
                    orElse: () => false),
                listener: (context, state) => state.maybeMap(
                    addSuccess: (_) => CustomNavigator.pop(),
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
                    orElse: () => {}),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: CwColors.customWhite,
                          ),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text('Создание нового запроса',
                                    style: CwTextStyles.taskHeader.withColor(
                                        CwColors.startHeaderPrimary)),
                              ),
                              const SizedBox(height: 16),
                              CwTextField(
                                controller: _nameController,
                                labelText: 'Название запросов',
                                maxLines: 1,
                                hasSpaceForError: false,
                                onChanged: (_) => setState(() {
                                  isFormReady = getFormReadyStatus();
                                }),
                              ),
                              const SizedBox(height: 12),
                              CwMultiDropdown(
                                label: 'Отрасль',
                                controller: _industryController,
                                title: _industryTitle,
                                elements: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    itemCount: industryItems.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        setState(() {
                                          if (industryId !=
                                              industryItems[index].id) {
                                            BlocProvider.of<TaskBloc>(context)
                                                .add(
                                              TaskEvent.getSubindustries(
                                                  id: industryItems[index].id),
                                            );
                                          }

                                          industryId = industryItems[index].id;
                                          _industryTitle =
                                              industryItems[index].name;
                                          _industryController.collapse();

                                          isFormReady = getFormReadyStatus();
                                        });
                                      },
                                      title: Text(industryItems[index].name),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              CwMultiDropdown(
                                title: _subindustryTitle,
                                label: 'Подотрасль',
                                controller: _subindustryController,
                                elements: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    itemCount: subindustryItems.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        setState(() {
                                          if (subindustryId !=
                                              subindustryItems[index].id) {
                                            BlocProvider.of<TaskBloc>(context)
                                                .add(
                                              TaskEvent.getFunctions(
                                                  id: subindustryItems[index]
                                                      .id),
                                            );
                                          }

                                          subindustryId =
                                              subindustryItems[index].id;
                                          _subindustryTitle =
                                              subindustryItems[index].name;
                                          _subindustryController.collapse();

                                          isFormReady = getFormReadyStatus();
                                        });
                                      },
                                      title: Text(subindustryItems[index].name),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              CwMultiDropdown(
                                title: _functionTitle,
                                label: 'Функция',
                                controller: _functionController,
                                elements: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    itemCount: functionItems.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        setState(() {
                                          if (functionId !=
                                              functionItems[index].id) {
                                            BlocProvider.of<TaskBloc>(context)
                                                .add(
                                              TaskEvent.getSubfunctions(
                                                  id: functionItems[index].id),
                                            );
                                          }

                                          functionId = functionItems[index].id;
                                          _functionTitle =
                                              functionItems[index].name;
                                          _functionController.collapse();

                                          isFormReady = getFormReadyStatus();
                                        });
                                      },
                                      title: Text(functionItems[index].name),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              CwMultiDropdown(
                                title: _subfunctionTitle,
                                label: 'Подфункция',
                                controller: _subfunctionController,
                                elements: [
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    itemCount: subfunctionItems.length,
                                    itemBuilder: (context, index) => ListTile(
                                      onTap: () {
                                        setState(() {
                                          subfunctionId =
                                              subfunctionItems[index].id;
                                          _subfunctionTitle =
                                              subfunctionItems[index].name;
                                          _subfunctionController.collapse();

                                          isFormReady = getFormReadyStatus();
                                        });
                                      },
                                      title: Text(subfunctionItems[index].name),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              CwTextField(
                                controller: _descriptionController,
                                labelText: 'Описание запросов',
                                hasSpaceForError: false,
                                topPadding: 0,
                                minLines: 3,
                                onChanged: (_) => setState(() {
                                  isFormReady = getFormReadyStatus();
                                }),
                              ),
                              const SizedBox(height: 12),
                              CwCheckbox(
                                initialValue: isCommonTask,
                                onChanged: (value) => setState(() {
                                  isCommonTask = value;
                                  isFormReady = getFormReadyStatus();
                                }),
                                label: const Wrap(
                                  children: [
                                    Text(
                                      'Общий запрос',
                                      style: TextStyle(
                                          decorationColor: CwColors.primaryText,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(height: 18),
                              CwElevatedButton(
                                block: true,
                                text: 'Создать и пригласить экспертов',
                                heightStyle: CwButtonHeightEnum.standard,
                                onTap: isFormReady
                                    ? () => {
                                  BlocProvider.of<TaskBloc>(context)
                                      .add(
                                    TaskEvent.createTaskInviteExperts(
                                      expertIds: widget.userIds,
                                      request: CreateTaskRequest(
                                          name: _nameController.value!,
                                          industry: industryId,
                                          subindustry: subindustryId > 0
                                              ? subindustryId
                                              : null,
                                          function: functionId > 0
                                              ? functionId
                                              : null,
                                          subfunction: subfunctionId > 0
                                              ? subfunctionId
                                              : null,
                                          description:
                                          _descriptionController
                                              .value!,
                                          type:  isCommonTask ? TaskType.public : TaskType.closed),
                                    ),
                                  ),
                                }
                                    : null,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                top: 12,
                child: CwIconButton(
                    width: 18,
                    height: 18,
                    icon: SvgPicture.asset(Assets.imageCrossClose),
                    onTap: () => {
                      CustomNavigator.maybePop(context: context),
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool getFormReadyStatus() {
    bool isNameReady = _nameController.valid;
    bool isDescriptionReady = _descriptionController.valid;
    bool isClassificatorsReady = industryId != 0;

    return isNameReady && isDescriptionReady && isClassificatorsReady;
  }
}
