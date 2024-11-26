import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'segment_experience_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SegmentExperienceModel {
  final ClassificatorModel industry;
  final ClassificatorModel subindustry;
  final ClassificatorModel function;
  final ClassificatorModel subfunction;
  final String dateStart;
  final String dateEnd;
  final String description;

  const SegmentExperienceModel({
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.dateStart,
    required this.dateEnd,
    required this.description,
  });

  factory SegmentExperienceModel.fromJson(Map<String, dynamic> json) => _$SegmentExperienceModelFromJson(json);

  Map<String, dynamic> toJson () => _$SegmentExperienceModelToJson(this);
}
