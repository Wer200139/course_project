import 'package:json_annotation/json_annotation.dart';

part 'education_level_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EducationLevelModel {
  final int id;
  final String name;
  final int orderNumber;

  const EducationLevelModel({
    required this.id,
    required this.name,
    required this.orderNumber,
  });

  factory EducationLevelModel.fromJson(Map<String, dynamic> json) => _$EducationLevelModelFromJson(json);

  Map<String, dynamic> toJson() => _$EducationLevelModelToJson(this);
}
