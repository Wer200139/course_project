import 'package:clokwise/common/navigation/custom_navigator.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:clokwise/features/repositories/task/request/create_task_request.dart';
import 'package:clokwise/features/task/bloc/task_bloc.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/appbar.dart';
import 'package:clokwise/packages/components/cw_multi_dropdown.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/icon_button.dart';
import 'package:clokwise/packages/components/scaffold.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CreateNewInquery extends StatefulWidget {
  final bool isClosed;

  const CreateNewInquery({super.key, required this.isClosed});

  @override
  State<CreateNewInquery> createState() => _CreateNewInqueryState();
}

class _CreateNewInqueryState extends State<CreateNewInquery> {
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

  bool isFormReady = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<TaskBloc, TaskState>(
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
      child: CWScaffold(
        appBar: CwAppBar(
          backgroundColor: CwColors.primary,
          title: SvgPicture.asset(
              height: 18,
              width: 18,
              Assets.imageCLOKWISE,
              color: CwColors.customWhite),
          leading: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: CwIconButton(
              width: 30,
              height: 30,
              borderRadius: 6,
              icon: SvgPicture.asset(Assets.imageArrowLeft),
              onTap: () => CustomNavigator.pop(),
              backgroundColor: CwColors.subButtonInverse,
            ),
          ),
          actions: [
            Row(
              children: [
                const Text(
                  'Ru',
                  style: TextStyle(color: CwColors.customWhite),
                ),
                CwIconButton(
                  icon: SvgPicture.asset(
                    Assets.imageDown,
                    color: CwColors.customWhite,
                  ),
                  onTap: () => setState(() {}),
                )
              ],
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: CwColors.customWhite,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Создание нового запроса',
                            style: CwTextStyles.taskHeader
                                .withColor(CwColors.startHeaderPrimary)),
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
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: industryItems.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                setState(() {
                                  if (industryId != industryItems[index].id) {
                                    BlocProvider.of<TaskBloc>(context).add(
                                      TaskEvent.getSubindustries(
                                          id: industryItems[index].id),
                                    );
                                  }

                                  industryId = industryItems[index].id;
                                  _industryTitle = industryItems[index].name;
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
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: subindustryItems.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                setState(() {
                                  if (subindustryId !=
                                      subindustryItems[index].id) {
                                    BlocProvider.of<TaskBloc>(context).add(
                                      TaskEvent.getFunctions(
                                          id: subindustryItems[index].id),
                                    );
                                  }

                                  subindustryId = subindustryItems[index].id;
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
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: functionItems.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                setState(() {
                                  if (functionId != functionItems[index].id) {
                                    BlocProvider.of<TaskBloc>(context).add(
                                      TaskEvent.getSubfunctions(
                                          id: functionItems[index].id),
                                    );
                                  }

                                  functionId = functionItems[index].id;
                                  _functionTitle = functionItems[index].name;
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
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: subfunctionItems.length,
                            itemBuilder: (context, index) => ListTile(
                              onTap: () {
                                setState(() {
                                  subfunctionId = subfunctionItems[index].id;
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
                        onChanged: (_) => setState(() {
                          isFormReady = getFormReadyStatus();
                        }),
                      ),
                      const SizedBox(height: 18),
                      CwElevatedButton(
                        block: true,
                        text: widget.isClosed
                            ? 'Направить закрытый запрос'
                            : 'Направить общий запрос',
                        heightStyle: CwButtonHeightEnum.standard,
                        onTap: isFormReady
                            ? () => {
                                  BlocProvider.of<TaskBloc>(context).add(
                                    TaskEvent.createTask(
                                      request: CreateTaskRequest(
                                        name: _nameController.value!,
                                        industry: industryId,
                                        subindustry: subindustryId > 0
                                            ? subindustryId
                                            : null,
                                        function:
                                            functionId > 0 ? functionId : null,
                                        subfunction: subfunctionId > 0
                                            ? subfunctionId
                                            : null,
                                        description:
                                            _descriptionController.value!,
                                        type: widget.isClosed
                                            ? TaskType.closed
                                            : TaskType.public,
                                      ),
                                    ),
                                  ),
                                }
                            : null,
                      )
                    ],
                  ),
                ),
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
