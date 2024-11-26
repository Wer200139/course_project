
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/segment_experience_item.dart';
import 'package:clokwise/generated/assets.dart';
import 'package:clokwise/packages/components/date_picker.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/components/textfield.dart';
import 'package:clokwise/packages/core/forms/custom_validators.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/my_flutter_app_icons.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ExperienceItem extends StatefulWidget {
  final Function onChangeFirm;
  final Function onChangePostjob;
  final Function onChangedDateStart;
  final Function onChangeEndJob;
  final VoidCallback onDelete;
  final ValueChanged<List<segmentExperience>> onSegmentExperiencesChanged;

  final String firmString;
  final String position;
  final String dateStartJob;
  final String dateEndJob;
  final bool isUpdated;
  final List<segmentExperience> currentSegments;

  const ExperienceItem({
    super.key,
    required this.onChangeFirm,
    required this.onChangePostjob,
    required this.onChangedDateStart,
    required this.onChangeEndJob,
    required this.onSegmentExperiencesChanged,
    required this.onDelete,
    required this.firmString,
    required this.position,
    required this.dateStartJob,
    required this.dateEndJob,
    required this.currentSegments,
    required this.isUpdated,
  });

  @override
  State<ExperienceItem> createState() => _ExperienceItemState();
}

class _ExperienceItemState extends State<ExperienceItem> {
  final _firmController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );

  final _postJobController = FormControl<String>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  late final _dateStartJobController = FormControl<String?>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );
  late final _dateEndJobController = FormControl<String?>(
    value: '',
    validators: [Validators.delegate(CustomValidators.required())],
  );

  final List<segmentExperience> _segmentExperiences = [];

  void _addSegment() {
    _segmentExperiences.add(
      segmentExperience(
          industry: 0,
          subindustry: 0,
          function: 0,
          subfunction: 0,
          dateStart: '',
          dateEnd: '',
          description: '',
          isNew: true),
    );
  }


  @override
  void initState() {
    if (widget.currentSegments.isNotEmpty) {
      for (var s in widget.currentSegments) {
        _segmentExperiences.add(
          segmentExperience(
              industry: s.industry,
              subindustry: s.subindustry,
              function: s.function,
              subfunction: s.subfunction,
              dateStart: s.dateStart,
              dateEnd: s.dateEnd,
              description: s.description,
              isNew: false),
        );
      }
    } else {
      _addSegment();
    }

    _firmController.value = widget.firmString;
    _postJobController.value = widget.position;
    _dateStartJobController.value = widget.dateStartJob;
    _dateEndJobController.value = widget.dateEndJob;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CwTextField(
          controller: _firmController,
          maxLines: 1,
          labelText: 'Название организации или её описание',
          prefixIcon:
              SvgPicture.asset(fit: BoxFit.none, Assets.image04Building),
          onChanged: (value) => widget.onChangeFirm(_firmController.value!),
        ),
        CwTextField(
          controller: _postJobController,
          maxLines: 1,
          labelText: 'Должность',
          onChanged: (value) {
            widget.onChangePostjob(_postJobController.value!);
          },
        ),
        Row(
          children: [
            Expanded(
              child: DatePicker(
                  controller: _dateStartJobController,
                  lastDate: DateTime.now(),
                  labelText: 'Начало работы',
                  onTap: () {
                    widget.onChangedDateStart(_dateStartJobController.value!);
                  }),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: DatePicker(
                  controller: _dateEndJobController,
                  lastDate: DateTime.now(),
                  labelText: 'Завершение',
                  onTap: () {
                    widget.onChangeEndJob(_dateEndJobController.value!);
                  }),
            ),
          ],
        ),
        const SizedBox(height: 8),
        CwElevatedButton(
          text: 'Удалить опыт',
          block: true,
          style: ElevatedButtonStyle.delete,
          heightStyle: CwButtonHeightEnum.standard,
          leading: MyFlutterApp.trash,
          onTap: () {
            widget.onDelete();
          },
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            'Сегменты опыта',
            style: CwTextStyles.nameText.merge(const TextStyle(fontSize: 16)),
          ),
        ),
        const Padding(padding: EdgeInsets.only(bottom: 30)),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _segmentExperiences.length,
          itemBuilder: (context, index) {
            return SegmentExperienceItem(
              key: ObjectKey(_segmentExperiences[index]),
              onChangeField: (value) {
                _segmentExperiences[index] = value;
                widget.onSegmentExperiencesChanged(_segmentExperiences);
              },
              onDeleteSegment: () =>
              _segmentExperiences.length > 1
                  ? setState(() {
                _segmentExperiences.removeAt(index);
                widget.onSegmentExperiencesChanged(_segmentExperiences);
              })
                  : null,
              currentIndustry: _segmentExperiences[index].industry > 0
                  ? _segmentExperiences[index].industry
                  : null,
              currentSubIndustry: _segmentExperiences[index].subindustry > 0
                  ? _segmentExperiences[index].subindustry
                  : null,
              currentFunction: _segmentExperiences[index].function > 0
                  ? _segmentExperiences[index].function
                  : null,
              currentSubfunction: _segmentExperiences[index].subfunction > 0
                  ? _segmentExperiences[index].subfunction
                  : null,
              dateStart: widget.currentSegments.isNotEmpty
                  ? _segmentExperiences[index].dateStart
                  : '',
              dateEnd: widget.currentSegments.isNotEmpty
                  ? _segmentExperiences[index].dateEnd
                  : '',
              currentDescription: widget.currentSegments.isNotEmpty
                  ? _segmentExperiences[index].description
                  : '',
              isUpdated: widget.isUpdated,
            );
          }
        ),
        CwTextButton(
          text: 'Добавить сегменты опыта',
          backgroundColor: CwColors.subButton,
          block: true,
          icon: Icons.add,
          iconSize: 18,
          onTap: () => setState(() {
            _addSegment();
          }),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class segmentExperience {
  int industry;
  int subindustry;
  int function;
  int subfunction;
  String dateStart;
  String dateEnd;
  String description;
  bool isNew;

  segmentExperience({
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.dateStart,
    required this.dateEnd,
    required this.description,
    required this.isNew,
  });
}
