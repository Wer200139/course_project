import 'package:json_annotation/json_annotation.dart';

part 'subfunction_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SubfunctionModel {
  final int id;
  final String name;
  final int orderNumber;

  const SubfunctionModel({
    required this.id,
    required this.name,
    required this.orderNumber,
  });

  factory SubfunctionModel.fromJson(Map<String, dynamic> json) => _$SubfunctionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubfunctionModelToJson(this);
}
