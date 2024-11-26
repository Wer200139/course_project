import 'package:clokwise/features/repositories/profile/models/comment_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'comment_result_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ReviewResultModel {
  final int count;
  final String? next;
  final String? previous;
  final List<ReviewModel> results;

  const ReviewResultModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory ReviewResultModel.fromJson(Map<String, dynamic> json) => _$ReviewResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResultModelToJson(this);
}
