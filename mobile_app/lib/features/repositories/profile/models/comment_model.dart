import 'package:json_annotation/json_annotation.dart';

part 'comment_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ReviewModel {
  final int id;
  final DateTime datetimeCreated;
  final double rating;
  final String text;
  final String name;

  const ReviewModel({
    required this.id,
    required this.datetimeCreated,
    required this.rating,
    required this.text,
    required this.name,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}
