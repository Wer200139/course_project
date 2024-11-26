import 'package:clokwise/features/repositories/profile/models/avatar_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'creator_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: false)
class CreatorModel {
  final int id;
  final TypeAccount type;
  final String? firstName;
  final String? lastName;
  final String? companyName;
  final String? companyDescription;
  final String? companyWebsite;
  final AvatarModel? avatar;

  const CreatorModel({
    required this.id,
    required this.type,
    required this.firstName,
    required this.lastName,
    required this.companyDescription,
    required this.companyName,
    required this.companyWebsite,
    required this.avatar,
  });

  factory CreatorModel.fromJson(Map<String, dynamic> json) => _$CreatorModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorModelToJson(this);
}

enum TypeAccount {
  PERSON,
  COMPANY,
  EXPERT,
}