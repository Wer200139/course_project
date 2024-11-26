import 'package:clokwise/features/repositories/task/models/request_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'application_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class ApplicationModel {
  final RequestModel request;
  final DateTime datetimeCreated;

  const ApplicationModel({
    required this.request,
    required this.datetimeCreated,
  });

  factory ApplicationModel.fromJson(Map<String, dynamic> json) => _$ApplicationModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicationModelToJson(this);
}
