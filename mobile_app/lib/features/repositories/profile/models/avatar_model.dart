import 'package:json_annotation/json_annotation.dart';

part 'avatar_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AvatarModel {
  final String image;
  final String imageSmall;
  final int id;

  const AvatarModel({
    required this.image,
    required this.imageSmall,
    required this.id,
  });

  factory AvatarModel.fromJson(Map<String, dynamic> json) => _$AvatarModelFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarModelToJson(this);
}
