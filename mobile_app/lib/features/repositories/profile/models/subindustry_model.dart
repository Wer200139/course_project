import 'package:json_annotation/json_annotation.dart';

part 'subindustry_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SubindustryModel {
  final int id;
  final String name;
  final int orderNumber;

  const SubindustryModel({
    required this.id,
    required this.name,
    required this.orderNumber,
  });

  factory SubindustryModel.fromJson(Map<String, dynamic> json) => _$SubindustryModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubindustryModelToJson(this);
}
