import 'package:json_annotation/json_annotation.dart';

part 'classificator_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ClassificatorModel {
  final int id;
  final String name;
  final IndustryType type;
  final int orderNumber;
  final List<ClassificatorModel>? children;

  const ClassificatorModel({
    required this.id,
    required this.name,
    required this.type,
    required this.orderNumber,
    this.children,
  });

  factory ClassificatorModel.fromJson(Map<String, dynamic> json) => _$ClassificatorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ClassificatorModelToJson(this);
}

enum IndustryType {
  INDUSTRY,
  SUBINDUSTRY,
  FUNCTION,
  SUBFUNCTION,
}