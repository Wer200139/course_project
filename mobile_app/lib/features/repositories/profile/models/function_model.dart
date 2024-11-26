import 'package:json_annotation/json_annotation.dart';

part 'function_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FunctionModel {
  final int id;
  final String name;
  final int orderNumber;

  const FunctionModel({
    required this.id,
    required this.name,
    required this.orderNumber,
  });

  factory FunctionModel.fromJson(Map<String, dynamic> json) => _$FunctionModelFromJson(json);

  Map<String, dynamic> toJson() => _$FunctionModelToJson(this);
}
