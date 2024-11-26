import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/task/models/creator_model.dart';
import 'package:clokwise/features/repositories/task/models/expert_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false, includeIfNull: false)
class TaskModel {
  final int id;
  final CreatorModel creator;
  final String name;
  final String? description;
  final List<ExpertModel> applicants;
  final int applicantsCount;
  final DateTime datetimeCreated;
  final DateTime? datetimeExpire;
  final ClassificatorModel? industry;
  final ClassificatorModel? subindustry;
  final ClassificatorModel? function;
  final ClassificatorModel? subfunction;
  final TaskType type;
  final bool isApplicationSent;
  final double? creatorRating;
  final bool isActive;


  const TaskModel({
    required this.id,
    required this.creator,
    required this.name,
    required this.description,
    required this.applicants,
    required this.applicantsCount,
    required this.datetimeCreated,
    required this.datetimeExpire,
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.type,
    required this.isApplicationSent,
    required this.creatorRating,
    required this.isActive,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) => _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}


enum TaskType {
@JsonValue('PUBLIC')
public,
@JsonValue('CLOSED')
closed,
}