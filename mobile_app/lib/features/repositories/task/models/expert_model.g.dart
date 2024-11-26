// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpertModel _$ExpertModelFromJson(Map<String, dynamic> json) => ExpertModel(
      id: (json['id'] as num).toInt(),
      avatar: json['avatar'] == null
          ? null
          : AvatarModel.fromJson(json['avatar'] as Map<String, dynamic>),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      totalExperience: (json['total_experience'] as num?)?.toDouble(),
      relevantExperience: (json['relevant_experience'] as num?)?.toDouble(),
      applicationId: (json['application_id'] as num?)?.toInt(),
      chatId: (json['chat_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExpertModelToJson(ExpertModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('total_experience', instance.totalExperience);
  writeNotNull('relevant_experience', instance.relevantExperience);
  writeNotNull('chat_id', instance.chatId);
  writeNotNull('application_id', instance.applicationId);
  return val;
}
