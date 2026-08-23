// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssessmentModelImpl _$$AssessmentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AssessmentModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      selectedPrograms: (json['selectedPrograms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      answers: json['answers'] as Map<String, dynamic>,
      insightSummary: json['insightSummary'] as String?,
      userTags: (json['userTags'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      recommendedSpecialties: (json['recommendedSpecialties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      completedAt: const TimestampConverter().fromJson(json['completedAt']),
    );

Map<String, dynamic> _$$AssessmentModelImplToJson(
        _$AssessmentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'selectedPrograms': instance.selectedPrograms,
      'answers': instance.answers,
      'insightSummary': instance.insightSummary,
      'userTags': instance.userTags,
      'recommendedSpecialties': instance.recommendedSpecialties,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'completedAt': const TimestampConverter().toJson(instance.completedAt),
    };
