
import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/education_item.dart';
import 'package:clokwise/features/repositories/profile/models/education_degree_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_level_model.dart';
import 'package:clokwise/features/repositories/profile/models/education_model.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EducationListWidget extends StatefulWidget {
  final List<EducationDegreeModel> degrees;
  final List<EducationLevelModel> levels;
  final List<EducationModel> educations;

  const EducationListWidget({
    super.key,
    required this.degrees,
    required this.levels,
    required this.educations,
  });

  @override
  State<EducationListWidget> createState() => _EducationListWidgetState();
}

class _EducationListWidgetState extends State<EducationListWidget> {
  final List<_EducationModel> _educations = [];
  final List<EducationModel> _educationsModels = [];

  void _addEducation() {
    setState(() {
      _educations.add(
        _EducationModel(
            educationLevel: 0,
            educationDegree: 0,
            institutionName: '',
            specialityName: '',
            departmentName: ''),
      );
    });
  }

  @override
  void initState() {
    setState(() {
      if (widget.educations.isNotEmpty) {
        for (var e in widget.educations) {
          _educations.add(
            _EducationModel(
                educationLevel: e.educationLevel,
                educationDegree: e.educationDegree,
                institutionName: e.specialityName,
                specialityName: e.specialityName,
                departmentName: e.departmentName),
          );
        }
      } else {
        _addEducation();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: CwColors.customWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Образование',
            style: CwTextStyles.nameText,
          ),
          const SizedBox(height: 20),
          CwTextButton(
            text: 'Добавить образование',
            backgroundColor: CwColors.subButton,
            icon: Icons.add,
            block: true,
            iconSize: 18,
            onTap: () => _addEducation(),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _educations.length,
            itemBuilder: (context, index) => EducationItem(
              key: ObjectKey(_educations[index]),
              degrees: widget.degrees,
              levels: widget.levels,
              onChangeLevel: (value) =>
                  _educations[index].educationLevel = value,
              onChangeDegree: (value) =>
                  _educations[index].educationDegree = value,
              onChangeInstitutionName: (value) =>
                  _educations[index].institutionName = value,
              onChangeSpeciality: (value) =>
                  _educations[index].specialityName = value,
              onChangeDepartament: (value) =>
                  _educations[index].departmentName = value,
              onDeleteEducation: () => _educations.length > 1 ? setState(() {
                _educations.removeAt(index);
              }) : null,
              institute: index < _educations.length
                  ? _educations[index].institutionName
                  : '',
              departement: index < _educations.length
                  ? _educations[index].departmentName
                  : '',
              speciality: index < _educations.length
                  ? _educations[index].specialityName
                  : '',
              level: index < _educations.length
                  ? _educations[index].educationLevel
                  : null,
              degree: index < _educations.length
                  ? _educations[index].educationDegree
                  : null,
            ),
          ),
          CwElevatedButton(
            text: 'Сохранить изменения',
            onTap: () {
              for (var e in _educations) {
                if (e.educationLevel > 1 &&
                    e.educationDegree > 0 &&
                    e.institutionName.isNotEmpty &&
                    e.specialityName.isNotEmpty &&
                    e.departmentName.isNotEmpty) {
                  _educationsModels.add(EducationModel(
                    educationLevel: e.educationLevel,
                    educationDegree: e.educationDegree,
                    institutionName: e.institutionName,
                    specialityName: e.specialityName,
                    departmentName: e.departmentName,
                  ));
                }
              }
              BlocProvider.of<ProfileSettingsBloc>(context).add(
                  ProfileSettingsEvent.updateEducationRequested(
                      educations: _educationsModels));
            },
            block: true,
            heightStyle: CwButtonHeightEnum.standard,
          ),
        ],
      ),
    );
  }

  bool _getSaveChange() {
    return _educations.every((e) =>
        e.educationLevel > 0 &&
        e.educationDegree > 0 &&
        e.institutionName.isNotEmpty &&
        e.specialityName.isNotEmpty &&
        e.departmentName.isNotEmpty);
  }
}

class _EducationModel {
  int educationLevel;
  int educationDegree;
  String institutionName;
  String specialityName;
  String departmentName;

  _EducationModel({
    required this.educationLevel,
    required this.educationDegree,
    required this.institutionName,
    required this.specialityName,
    required this.departmentName,
  });
}
