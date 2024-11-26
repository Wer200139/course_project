// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvatarModel _$AvatarModelFromJson(Map<String, dynamic> json) => AvatarModel(
      image: json['image'] as String,
      imageSmall: json['image_small'] as String,
      id: (json['id'] as num).toInt(),
    );

Map<String, dynamic> _$AvatarModelToJson(AvatarModel instance) =>
    <String, dynamic>{
      'image': instance.image,
      'image_small': instance.imageSmall,
      'id': instance.id,
    };
