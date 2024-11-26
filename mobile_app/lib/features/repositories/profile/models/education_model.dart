import 'package:json_annotation/json_annotation.dart';

part 'education_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EducationModel {
  final int educationLevel;
  final int educationDegree;
  final String institutionName;
  final String specialityName;
  final String departmentName;

  const EducationModel({
    required this.educationLevel,
    required this.educationDegree,
    required this.institutionName,
    required this.specialityName,
    required this.departmentName,
  });

  factory EducationModel.fromJson(Map<String, dynamic> json) => _$EducationModelFromJson(json);

  Map<String, dynamic> toJson() => _$EducationModelToJson(this);
}
