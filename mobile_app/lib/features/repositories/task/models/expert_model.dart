import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expert_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ExpertModel {
  final int id;
  final AvatarModel? avatar;
  final String? firstName;
  final String? lastName;
  final double? totalExperience;
  final double? relevantExperience;
  final int? chatId;
  final int? applicationId;

  const ExpertModel({
    required this.id,
    required this.avatar,
    required this.firstName,
    required this.lastName,
    required this.totalExperience,
    required this.relevantExperience,
    this.applicationId,
    this.chatId,
  });

  factory ExpertModel.fromJson(Map<String, dynamic> json) => _$ExpertModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExpertModelToJson(this);
}
