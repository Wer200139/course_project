// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachmentModel _$AttachmentModelFromJson(Map<String, dynamic> json) =>
    AttachmentModel(
      id: json['id'] as String,
      filename: json['filename'] as String,
      type: $enumDecode(_$FileTypeEnumMap, json['type']),
      mimeType: json['mime_type'] as String,
      fileSize: (json['file_size'] as num).toInt(),
    );

Map<String, dynamic> _$AttachmentModelToJson(AttachmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'type': _$FileTypeEnumMap[instance.type]!,
      'mime_type': instance.mimeType,
      'file_size': instance.fileSize,
    };

const _$FileTypeEnumMap = {
  FileType.file: 'FILE',
  FileType.image: 'IMAGE',
};
