import 'package:json_annotation/json_annotation.dart';

part 'segment_experience_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class SegmentExperienceRequest {
  final int industry;
  final int subindustry;
  final int function;
  final int subfunction;
  final String dateStart;
  final String dateEnd;
  final String description;

  const SegmentExperienceRequest({
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.dateStart,
    required this.dateEnd,
    required this.description,
  });

  factory SegmentExperienceRequest.fromJson(Map<String, dynamic> json) => _$SegmentExperienceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SegmentExperienceRequestToJson(this);
}
