import 'package:json_annotation/json_annotation.dart';

part 'search_request.g.dart';

@JsonSerializable(includeIfNull: false)
class SearchRequest {
  final int? industry;
  final int? subindustry;
  final int? function;
  final int? subfunction;
  final String? prompt;
  final int? experience;

  const SearchRequest({
    required this.industry,
    required this.subindustry,
    required this.function,
    required this.subfunction,
    required this.prompt,
    required this.experience,
  });

  factory SearchRequest.fromJson(Map<String, dynamic> json) => _$SearchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRequestToJson(this);
}
