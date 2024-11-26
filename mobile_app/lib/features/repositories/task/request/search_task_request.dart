import 'package:json_annotation/json_annotation.dart';

part 'search_task_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class SearchTaskRequest {
  final int page;
  final int? industry;
  final int? subindustry;
  final int? function;
  final int? subfunction;
  final String? prompt;

  const SearchTaskRequest({
    required this.page,
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.prompt,
  });

  factory SearchTaskRequest.fromJson(Map<String, dynamic> json) => _$SearchTaskRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTaskRequestToJson(this);
}
