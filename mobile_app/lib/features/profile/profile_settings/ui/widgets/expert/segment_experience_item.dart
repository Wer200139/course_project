import 'package:clokwise/common/ui/page_loading_indicator.dart';
import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/experience_item.dart';
import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/packages/components/date_picker.dart';
import 'package:clokwise/packages/components/dropdown.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/my_flutter_app_icons.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SegmentExperienceItem extends StatefulWidget {
  final Function onChangeField;
  final VoidCallback onDeleteSegment;

  final int? currentIndustry;
  final int? currentSubIndustry;
  final int? currentFunction;
  final int? currentSubfunction;
  final String dateStart;
  final String dateEnd;
  final String currentDescription;
  final bool isUpdated;

  const SegmentExperienceItem({
    super.key,
    required this.onChangeField,
    required this.onDeleteSegment,
    required this.currentIndustry,
    required this.currentSubIndustry,
    required this.currentFunction,
    required this.currentSubfunction,
    required this.dateStart,
    required this.dateEnd,
    required this.currentDescription,
    required this.isUpdated,
  });

  @override
  State<SegmentExperienceItem> createState() => _SegmentExperienceItemState();
}

class _SegmentExperienceItemState extends State<SegmentExperienceItem> {
  final _formKey = GlobalKey<FormState>();

  final _descriptionExpJobController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  late final _dateStartSegmentController = FormControl<String?>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  late final _dateEndSegmentController = FormControl<String?>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );

  late int industry;
  late int subindustry;
  late int function;
  late int subfunction;
  late final List<CoolDropdownItem<ClassificatorModel>> industriesItems = [];
  late final List<CoolDropdownItem<ClassificatorModel>> subindustriesItems = [];
  late final List<CoolDropdownItem<ClassificatorModel>> functionsItems = [];
  late final List<CoolDropdownItem<ClassificatorModel>> subfunctionsItems = [];
  final industriesController = DropdownController<ClassificatorModel>();
  final subindustriesController = DropdownController<ClassificatorModel>();
  final functionController = DropdownController<ClassificatorModel>();
  final subfunctionController = DropdownController<ClassificatorModel>();

  segmentExperience segm = segmentExperience(
      industry: 0,
      subindustry: 0,
      function: 0,
      subfunction: 0,
      dateStart: '',
      dateEnd: '',
      description: '',
      isNew: true);
  bool _isFormReady = false;

  @override
  void initState() {
    BlocProvider.of<ProfileSettingsBloc>(context)
        .add(const ProfileSettingsEvent.getIndustriesRequested());

    industry = widget.currentIndustry ?? 0;
    subindustry = widget.currentSubIndustry ?? 0;
    function = widget.currentFunction ?? 0;
    subfunction = widget.currentSubfunction ?? 0;

    _descriptionExpJobController.value = widget.currentDescription;
    _dateStartSegmentController.value = widget.dateStart;
    _dateEndSegmentController.value = widget.dateEnd;
    segm.industry = industry;
    segm.subindustry = subindustry;
    segm.function = function;
    segm.subfunction = subfunction;
    segm.description = _descriptionExpJobController.value!;
    segm.dateStart = _dateStartSegmentController.value!;
    segm.dateEnd = _dateEndSegmentController.value!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileSettingsBloc, ProfileSettingsState>(
      listener: (context, state) => state.maybeMap(
          succesIndustries: (state) => setState(() {
                industriesItems.clear();

                for (var i = 0; i < state.industries.length; i++) {
                  industriesItems.add(CoolDropdownItem(
                      label: state.industries[i].name,
                      value: state.industries[i]));
                }

                if (subindustry > 0) {
                  BlocProvider.of<ProfileSettingsBloc>(context)
                      .add(ProfileSettingsEvent.getSubindustriesRequested(id: industry));
                }
              }),
          succesSubIndustries: (state) => setState(() {
                {
                  subindustriesItems.clear();
                  functionsItems.clear();
                  subfunctionsItems.clear();

                  for (var i = 0; i < state.subindustries.length; i++) {
                    subindustriesItems.add(CoolDropdownItem(
                        label: state.subindustries[i].name,
                        value: state.subindustries[i]));
                  }

                  if (function > 0) {
                    BlocProvider.of<ProfileSettingsBloc>(context)
                        .add(ProfileSettingsEvent.getFunctionsRequested(id: subindustry));
                  }
                }
              }),
          succesFunction: (state) => setState(() {
                functionsItems.clear();
                subfunctionsItems.clear();

                for (var i = 0; i < state.functions.length; i++) {
                  functionsItems.add(CoolDropdownItem(
                      label: state.functions[i].name,
                      value: state.functions[i]));
                }

                if (subfunction > 0) {
                  BlocProvider.of<ProfileSettingsBloc>(context)
                      .add(ProfileSettingsEvent.getSubfunctionRequested(id: function));
                }
              }),
          succesSubFunction: (state) => setState(() {
                {
                  subfunctionsItems.clear();

                  for (var i = 0; i < state.subfunctions.length; i++) {
                    subfunctionsItems.add(CoolDropdownItem(
                        label: state.subfunctions[i].name,
                        value: state.subfunctions[i]));
                  }
                }
              }),
          orElse: () {
            return null;
          }),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            industriesItems.isNotEmpty
                ? CwDropdown<ClassificatorModel>(
                    defaultItem: widget.currentIndustry != null &&
                            industriesItems.isNotEmpty
                        ? industriesItems.firstWhereOrNull((industry) =>
                            industry.value.id == widget.currentIndustry)
                        : null,
                    dropdownList: industriesItems,
                    controller: industriesController,
                    label: 'Отрасль',
                    onChange: (value) {
                      /*  if(value.id == industry)
                              return;*/
                      BlocProvider.of<ProfileSettingsBloc>(context).add(
                          ProfileSettingsEvent.getSubindustriesRequested(
                              id: value.id));

                      industry = value.id;
                      segm.industry = industry;
                      subindustriesController.resetValue();
                      functionController.resetValue();
                      subfunctionController.resetValue();

                      industriesController.close();
                    })
                : const PageLoadingIndicator(),
            const SizedBox(height: 18),
            subindustriesItems.isNotEmpty
                ? Column(
                    children: [
                      CwDropdown<ClassificatorModel>(
                        defaultItem: widget.currentSubIndustry != null &&
                                subindustriesItems.isNotEmpty
                            ? subindustriesItems.firstWhereOrNull((industry) =>
                                industry.value.id == widget.currentSubIndustry)
                            : null,
                        dropdownList: subindustriesItems,
                        controller: subindustriesController,
                        onChange: (value) {
                          {
                            BlocProvider.of<ProfileSettingsBloc>(context).add(
                                ProfileSettingsEvent.getFunctionsRequested(
                                    id: value.id));

                            subfunctionsItems.clear();
                            functionsItems.clear();

                            subindustry = value.id;
                            segm.subindustry = subindustry;

                            functionController.resetValue();
                            subfunctionController.resetValue();

                            subindustriesController.close();
                          }
                        },
                        label: 'Подотрасль',
                      ),
                      const SizedBox(height: 18),
                    ],
                  )
                : const SizedBox(),
            functionsItems.isNotEmpty
                ? Column(
                    children: [
                      CwDropdown<ClassificatorModel>(
                        defaultItem: widget.currentFunction != null &&
                                functionsItems.isNotEmpty
                            ? functionsItems.firstWhereOrNull((industry) =>
                                industry.value.id == widget.currentFunction)
                            : null,
                        dropdownList: functionsItems,
                        controller: functionController,
                        onChange: (value) async {
                          {
                            BlocProvider.of<ProfileSettingsBloc>(context).add(
                                ProfileSettingsEvent.getSubfunctionRequested(
                                    id: value.id));
                            function = value.id;

                            subfunctionController.resetValue();
                            subfunctionsItems.clear();

                            segm.function = function;
                            functionController.close();
                          }
                        },
                        label: 'Функция',
                      ),
                      const SizedBox(height: 18),
                    ],
                  )
                : const SizedBox(),
            subfunctionsItems.isNotEmpty
                ? CwDropdown<ClassificatorModel>(
                    defaultItem: subfunctionsItems.isNotEmpty
                        ? subfunctionsItems.firstWhereOrNull((industry) =>
                            industry.value.id == widget.currentSubfunction)
                        : null,
                    dropdownList: subfunctionsItems,
                    controller: subfunctionController,
                    onChange: (value) {
                      subfunction = value.id;
                      _isFormReady = _getFormReadyStatus();
                      segm.subfunction = subfunction;

                      if (_isFormReady) {
                        widget.onChangeField(segm);
                      }

                      subfunctionController.close();
                    },
                    label: 'Подфункция',
                  )
                : const SizedBox(),
            const SizedBox(height: 12),
            DatePicker(
              controller: _dateStartSegmentController,
              lastDate: DateTime.now(),
              labelText: 'Начало',
              onTap: () {
                _isFormReady = _getFormReadyStatus();
                segm.dateStart = _dateStartSegmentController.value!;

                if (_isFormReady) {
                  widget.onChangeField(segm);
                }
              },
            ),
            const SizedBox(height: 8),
            DatePicker(
                controller: _dateEndSegmentController,
                lastDate: DateTime.now(),
                labelText: 'Завершение',
                onTap: () {
                  _isFormReady = _getFormReadyStatus();
                  segm.dateEnd = _dateEndSegmentController.value!;

                  if (_isFormReady) {
                    widget.onChangeField(segm);
                  }
                }),
            const SizedBox(height: 18),
            CwTextField(
              controller: _descriptionExpJobController,
              minLines: 3,
              labelText: 'Подробнее об опыте',
              alignHintAndLabel: true,
              onChanged: (_) {
                _isFormReady = _getFormReadyStatus();
                segm.description = _descriptionExpJobController.value!;

                if (_isFormReady) {
                  widget.onChangeField(segm);
                }
              },
            ),
            CwElevatedButton(
                text: 'Удалить сегмент опыта',
                block: true,
                style: ElevatedButtonStyle.delete,
                heightStyle: CwButtonHeightEnum.standard,
                leading: MyFlutterApp.trash,
                onTap: () {
                  widget.onDeleteSegment();
                }),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  bool _getFormReadyStatus() {
    bool industryReady = industry > 0;
    bool subindustryReady = subindustry > 0;
    bool functionReady = function > 0;
    bool subFunctionReady = subfunction > 0;
    bool isStartReady = _dateStartSegmentController.value!.isNotEmpty;
    bool isEndReady = _dateEndSegmentController.value!.isNotEmpty;
    bool isDescriptionReady = _descriptionExpJobController.value!.isNotEmpty;

    return industryReady &
        subindustryReady &
        functionReady &
        subFunctionReady &
        isStartReady &
        isEndReady &
        isDescriptionReady;
  }
}
