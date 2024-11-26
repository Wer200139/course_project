import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_task_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class CreateTaskRequest {
  final String name;
  final int industry;
  final int? subindustry;
  final int? function;
  final int? subfunction;
  final String description;
  final TaskType type;

  const CreateTaskRequest({
    required this.name,
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.description,
    required this.type,
  });

  factory CreateTaskRequest.fromJson(Map<String, dynamic> json) => _$CreateTaskRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateTaskRequestToJson(this);
}
