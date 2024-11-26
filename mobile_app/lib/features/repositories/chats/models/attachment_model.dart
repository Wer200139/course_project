import 'package:json_annotation/json_annotation.dart';

part 'attachment_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class AttachmentModel {
  final String id;
  final String filename;
  final FileType type;
  final String mimeType;
  final int fileSize;

  const AttachmentModel({
    required this.id,
    required this.filename,
    required this.type,
    required this.mimeType,
    required this.fileSize,
  });

  factory AttachmentModel.fromJson(Map<String, dynamic> json) => _$AttachmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$AttachmentModelToJson(this);
}


enum FileType {
  @JsonValue('FILE')
  file,
  @JsonValue('IMAGE')
  image,
}