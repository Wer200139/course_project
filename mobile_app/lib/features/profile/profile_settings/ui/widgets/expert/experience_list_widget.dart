
import 'package:clokwise/features/profile/profile_settings/bloc/profile_settings_bloc.dart';
import 'package:clokwise/features/profile/profile_settings/ui/widgets/expert/experience_item.dart';
import 'package:clokwise/features/repositories/profile/models/experience_model.dart';
import 'package:clokwise/features/repositories/profile/models/segment_experience_model.dart';
import 'package:clokwise/features/repositories/profile/requests/experience_request.dart';
import 'package:clokwise/features/repositories/profile/requests/segment_experience_request.dart';
import 'package:clokwise/packages/components/elevated_button.dart';
import 'package:clokwise/packages/components/text_button.dart';
import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:clokwise/packages/ui_kit/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperienceListWidget extends StatefulWidget {
  final List<ExperienceModel> experiences;
  final bool isUpdated;

  const ExperienceListWidget({
    super.key,
    required this.experiences,
    required this.isUpdated,
  });

  @override
  State<ExperienceListWidget> createState() => _ExperienceListWidgetState();
}

class _ExperienceListWidgetState extends State<ExperienceListWidget> {
  final _formKey = GlobalKey<FormState>();
  List<UniqueKey> listKeys = [];

  final List<_experienceModel> _experiences = [];
  final List<ExperienceRequest> _experienceModels = [];
  List<segmentExperience> _segmentExperiences = [];
  final bool _isFormReady = false;

  List<SegmentExperienceRequest> _getSegmentExperiecneModels(
      List<segmentExperience> segments) {
    final List<SegmentExperienceRequest> segmentExperienceModels = [];

    for (var e in segments) {
      segmentExperienceModels.add(
        SegmentExperienceRequest(
            industry: e.industry,
            subindustry: e.subindustry,
            function: e.function,
            subfunction: e.subfunction,
            dateStart: e.dateStart,
            dateEnd: e.dateEnd,
            description: e.description),
      );
    }

    return segmentExperienceModels;
  }

  void _onSegmentExperiencesChanged(List<segmentExperience> experiences) {
    setState(() {
      _segmentExperiences = experiences;
    });
  }

  List<segmentExperience> _reverseGetSegmentExperiecneModels(
      List<SegmentExperienceModel> segments) {
    final List<segmentExperience> segmentExperienceModels = [];

    for (var e in segments) {
      segmentExperienceModels.add(
        segmentExperience(
            industry: e.industry.id,
            subindustry: e.subindustry.id,
            function: e.function.id,
            subfunction: e.subfunction.id,
            dateStart: e.dateStart,
            dateEnd: e.dateEnd,
            description: e.description,
            isNew: false),
      );
    }

    return segmentExperienceModels;
  }

  List<segmentExperience> _reverseGetSegmentExperience(
      List<SegmentExperienceModel> segments) {
    final List<segmentExperience> segmentExperienceModels = [];

    for (var e in segments) {
      segmentExperienceModels.add(
        segmentExperience(
            industry: e.industry.id,
            subindustry: e.subindustry.id,
            function: e.function.id,
            subfunction: e.subfunction.id,
            dateStart: e.dateStart,
            dateEnd: e.dateEnd,
            description: e.description,
            isNew: false),
      );
    }

    return segmentExperienceModels;
  }

  void _addNewExperience() {
    _experiences.add(
      _experienceModel(
        organizationName: '',
        dateStart: '',
        dateEnd: '',
        position: '',
        segments: [],
      ),
    );
    listKeys.add(UniqueKey());
  }

  @override
  void initState() {
    setState(() {
      if (widget.experiences.isNotEmpty) {
        for (var ex in widget.experiences) {
          _experiences.add(
            _experienceModel(
              organizationName: ex.organizationName,
              dateStart: ex.dateStart,
              dateEnd: ex.dateEnd,
              position: ex.position,
              segments: _reverseGetSegmentExperiecneModels(ex.segments),
            ),
          );
          listKeys.add(UniqueKey());
        }
      } else {
        _addNewExperience();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: CwColors.customWhite,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Опыт',
            style: CwTextStyles.nameText,
          ),
          const SizedBox(height: 20),
          CwTextButton(
            text: 'Добавить опыт',
            backgroundColor: CwColors.subButton,
            block: true,
            icon: Icons.add,
            iconSize: 18,
            onTap: () => {
              setState(() {
                _addNewExperience();
              }),
            },
          ),
          const SizedBox(height: 24),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _experiences.length,
            itemBuilder: (context, index) => ExperienceItem(
              key: ObjectKey(_experiences[index]),
              onChangeFirm: (value) =>
                  _experiences[index].organizationName = value,
              onChangePostjob: (value) => _experiences[index].position = value,
              onChangeEndJob: (value) => _experiences[index].dateEnd = value,
              onChangedDateStart: (value) =>
                  _experiences[index].dateStart = value,
              onSegmentExperiencesChanged: (List<segmentExperience> value) {
                _experiences[index].segments = value;
              },
              onDelete: () => _experiences.length > 1
                  ? {
                      setState(() {
                        _experiences.removeAt(index);
                      })
                    }
                  : null,

              firmString: index < _experiences.length
                  ? _experiences[index].organizationName
                  : '',
              position: index < _experiences.length
                  ? _experiences[index].position
                  : '',
              dateStartJob: index < _experiences.length
                  ? _experiences[index].dateStart
                  : '',
              dateEndJob: index < _experiences.length
                  ? _experiences[index].organizationName
                  : '',
              currentSegments: index < _experiences.length
                  ? _experiences[index].segments
                  : [],
              isUpdated: widget.isUpdated,
            ),
          ),
          CwElevatedButton(
            text: 'Сохранить изменения',
            onTap: () => {
              _experiences.forEach((exp) {
                if (exp.organizationName.isNotEmpty &&
                    exp.dateStart.isNotEmpty &&
                    exp.dateEnd.isNotEmpty &&
                    exp.position.isNotEmpty &&
                    exp.segments.isNotEmpty) {
                  _experienceModels.add(
                    ExperienceRequest(
                      organizationName: exp.organizationName,
                      dateStart: exp.dateStart,
                      dateEnd: exp.dateEnd,
                      position: exp.position,
                      segments: _getSegmentExperiecneModels(exp.segments),
                    ),
                  );
                }
              }),
              BlocProvider.of<ProfileSettingsBloc>(context).add(
                ProfileSettingsEvent.updateExperienceRequested(
                    experiences: _experienceModels),
              )
            },
            block: true,
            heightStyle: CwButtonHeightEnum.standard,
          ),
        ]),
      ),
    );
  }
}

class _experienceModel {
  String organizationName;
  String dateStart;
  String dateEnd;
  String position;
  List<segmentExperience> segments;

  _experienceModel({
    required this.organizationName,
    required this.dateStart,
    required this.dateEnd,
    required this.position,
    required this.segments,
  });
}
