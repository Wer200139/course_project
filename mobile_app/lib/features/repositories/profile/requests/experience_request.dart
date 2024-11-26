import 'package:clokwise/features/repositories/profile/requests/segment_experience_request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'experience_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ExperienceRequest {
  final String organizationName;
  final String dateStart;
  final String dateEnd;
  final String position;
  final List<SegmentExperienceRequest> segments;

  const ExperienceRequest({
    required this.organizationName,
    required this.dateStart,
    required this.dateEnd,
    required this.position,
    required this.segments,
  });

  factory ExperienceRequest.fromJson(Map<String, dynamic> json) => _$ExperienceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ExperienceRequestToJson(this);
}
