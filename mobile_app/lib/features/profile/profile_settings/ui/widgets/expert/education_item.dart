import 'package:clokwise/features/repositories/profile/models/education_degree_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_level_model.dart';
import 'package:clokwise/packages/components/dropdown.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/my_flutter_app_icons.dart';
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:reactive_forms/reactive_forms.dart';

class EducationItem extends StatefulWidget {
  final List<EducationDegreeModel> degrees;
  final List<EducationLevelModel> levels;
  final Function onChangeLevel;
  final Function onChangeDegree;
  final Function onChangeInstitutionName;
  final Function onChangeDepartament;
  final Function onChangeSpeciality;
  final Function onDeleteEducation;

  final String institute;
  final String departement;
  final String speciality;
  final int? level;
  final int? degree;

  const EducationItem({
    super.key,
    required this.degrees,
    required this.levels,
    required this.onChangeLevel,
    required this.onChangeDegree,
    required this.onChangeInstitutionName,
    required this.onChangeDepartament,
    required this.onChangeSpeciality,
    required this.onDeleteEducation,
    required this.institute,
    required this.departement,
    required this.speciality,
    this.level,
    this.degree,
  });

  @override
  State<EducationItem> createState() => _EducationItemState();
}

class _EducationItemState extends State<EducationItem> {
  final _educInstituteController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _departementController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );
  final _specialitiesController = FormControl<String>(
    value: '',
    validators: [
      Validators.delegate(CustomValidators.required()),
    ],
  );

  final levelController = DropdownController<EducationLevelModel>();
  final degreeController = DropdownController<EducationDegreeModel>();
  late final List<CoolDropdownItem<EducationLevelModel>> levelItems = [];
  late final List<CoolDropdownItem<EducationDegreeModel>> degreeItems = [];

  @override
  void initState() {
    super.initState();

    _educInstituteController.value = widget.institute;
    _departementController.value = widget.departement;
    _specialitiesController.value = widget.speciality;

    widget.onChangeInstitutionName(_educInstituteController.value!);
    widget.onChangeDepartament(_departementController.value!);
    widget.onChangeSpeciality(_specialitiesController.value!);

    for (var i = 0; i < widget.degrees.length; i++) {
      degreeItems.add(CoolDropdownItem(
          label: widget.degrees[i].name, value: widget.degrees[i]));
    }

    for (var i = 0; i < widget.levels.length; i++) {
      levelItems.add(CoolDropdownItem(
          label: widget.levels[i].name, value: widget.levels[i]));
    }
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CwDropdown<EducationLevelModel>(
              defaultItem: widget.level != null && widget.levels.isNotEmpty
                  ? levelItems.firstWhereOrNull(
                      (industry) => industry.value.id == widget.level)
                  : null,
              dropdownList: levelItems,
              controller: levelController,
              label: 'Уровень образования',
              onChange: (value) {
                levelController.close();
                setState(() {
                  widget.onChangeLevel(value.id);
                });
              }),
          const SizedBox(height: 18),
          CwDropdown<EducationDegreeModel>(
              defaultItem: widget.degree != null && widget.degrees.isNotEmpty
                  ? degreeItems.firstWhereOrNull(
                      (industry) => industry.value.id == widget.degree)
                  : null,
              dropdownList: degreeItems,
              controller: degreeController,
              label: 'Ученая степень',
              onChange: (value) {
                degreeController.close();
                setState(() {
                  widget.onChangeDegree(value.id);
                });
              }),
          const SizedBox(height: 12),
          CwTextField(
            controller: _educInstituteController,
            labelText: 'Название учебного заведения',
            maxLines: 1,
            onChanged: (value) {
              widget.onChangeInstitutionName(_educInstituteController.value!);
            },
          ),
          CwTextField(
              controller: _departementController,
              labelText: 'Кафедра',
              maxLines: 1,
              onChanged: (value) {
                widget.onChangeDepartament(_departementController.value!);
              }),
          CwTextField(
              controller: _specialitiesController,
              labelText: 'Специальность',
              maxLines: 2,
              onChanged: (value) {
                widget.onChangeSpeciality(_specialitiesController.value!);
              }),
          const SizedBox(height: 6),
          CwElevatedButton(
            text: 'Удалить образование',
            block: true,
            style: ElevatedButtonStyle.delete,
            heightStyle: CwButtonHeightEnum.standard,
            leading: MyFlutterApp.trash,
            onTap: () => widget.onDeleteEducation(),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
