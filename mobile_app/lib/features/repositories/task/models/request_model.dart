import 'package:clokwise/features/repositories/common/classificator/models/classificator_model.dart';
import 'package:clokwise/features/repositories/task/models/creator_model.dart';
import 'package:clokwise/features/repositories/task/models/expert_model.dart';
import 'package:clokwise/features/repositories/task/models/task_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false, includeIfNull: false)
class RequestModel {
  final int id;
  final CreatorModel creator;
  final String name;
  final String? description;
  final List<ExpertModel> applicants;
  final int applicantsCount;
  final DateTime datetimeCreated;
  final ClassificatorModel? industry;
  final ClassificatorModel? subindustry;
  final ClassificatorModel? function;
  final ClassificatorModel? subfunction;
  final TaskType type;


  const RequestModel({
    required this.id,
    required this.creator,
    required this.name,
    required this.description,
    required this.applicants,
    required this.applicantsCount,
    required this.datetimeCreated,
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.type,
  });

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestModelToJson(this);
}