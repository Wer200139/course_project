import 'package:json_annotation/json_annotation.dart';

part 'industry_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class IndustryModel {
  final int id;
  final String name;
  final int orderNumber;

  const IndustryModel({
    required this.id,
    required this.name,
    required this.orderNumber,
  });

  factory IndustryModel.fromJson(Map<String, dynamic> json) => _$IndustryModelFromJson(json);

  Map<String, dynamic> toJson() => _$IndustryModelToJson(this);
}
