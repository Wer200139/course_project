// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expert_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpertResultModel _$ExpertResultModelFromJson(Map<String, dynamic> json) =>
    ExpertResultModel(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      relevantExperience: (json['relevant_experience'] as num).toDouble(),
      totalExperience: (json['total_experience'] as num).toDouble(),
      chatId: (json['chat_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExpertResultModelToJson(ExpertResultModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar?.toJson(),
      'rating': instance.rating,
      'relevant_experience': instance.relevantExperience,
      'total_experience': instance.totalExperience,
      'chat_id': instance.chatId,
    };
