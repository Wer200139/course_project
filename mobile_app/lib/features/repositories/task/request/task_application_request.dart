import 'package:json_annotation/json_annotation.dart';

part 'task_application_request.g.dart';

@JsonSerializable()
class TaskApplicationRequest {
  final int request;

  const TaskApplicationRequest({
    required this.request,
  });

  factory TaskApplicationRequest.fromJson(Map<String, dynamic> json) => _$TaskApplicationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TaskApplicationRequestToJson(this);
}
