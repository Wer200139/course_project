import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'expert_result_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ExpertResultModel {
  final int id;
  final String firstName;
  final String lastName;
  final AvatarModel? avatar;
  final double? rating;
  final double relevantExperience;
  final double totalExperience;
  final int? chatId;
  final bool currentUserPaidForView;

  const ExpertResultModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.rating,
    required this.relevantExperience,
    required this.totalExperience,
    required this.chatId,
    required this.currentUserPaidForView,
  });

  factory ExpertResultModel.fromJson(Map<String, dynamic> json) => _$ExpertResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$ExpertResultModelToJson(this);
}
