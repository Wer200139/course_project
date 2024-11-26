import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tasks_result_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class TasksResultModel {
  final int count;
  final String? next;
  final String? previous;
  final List<TaskModel> results;

  const TasksResultModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory TasksResultModel.fromJson(Map<String, dynamic> json) => _$TasksResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$TasksResultModelToJson(this);
}
