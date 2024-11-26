import 'package:clokwise/features/repositories/profile/models/segment_experience_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'experience_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ExperienceModel {
  final String organizationName;
  final String dateStart;
  final String dateEnd;
  final String position;
  final List<SegmentExperienceModel> segments;

  const ExperienceModel({
    required this.organizationName,
    required this.dateStart,
    required this.dateEnd,
    required this.position,
    required this.segments,
  });

  factory ExperienceModel.fromJson(Map<String, dynamic> json) => _$ExperienceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceModelToJson(this);
}
