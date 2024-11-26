import 'package:json_annotation/json_annotation.dart';

part 'education_degree_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class EducationDegreeModel {
  final int id;
  final String name;
  final int orderNumber;

  const EducationDegreeModel({
    required this.id,
    required this.name,
    required this.orderNumber,
  });

  factory EducationDegreeModel.fromJson(Map<String, dynamic> json) => _$EducationDegreeModelFromJson(json);

  Map<String, dynamic> toJson() => _$EducationDegreeModelToJson(this);
}
