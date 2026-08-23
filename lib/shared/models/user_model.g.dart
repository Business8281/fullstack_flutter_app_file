// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      name: json['name'] as String,
      age: (json['age'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toDouble(),
      profession: json['profession'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      photoUrl: json['photoUrl'] as String?,
      selectedPrograms: (json['selectedPrograms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      problemDescription: json['problemDescription'] as String?,
      assessmentId: json['assessmentId'] as String?,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      favoritesPractitionerIds:
          (json['favoritesPractitionerIds'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'role': instance.role,
      'name': instance.name,
      'age': instance.age,
      'height': instance.height,
      'profession': instance.profession,
      'city': instance.city,
      'country': instance.country,
      'photoUrl': instance.photoUrl,
      'selectedPrograms': instance.selectedPrograms,
      'problemDescription': instance.problemDescription,
      'assessmentId': instance.assessmentId,
      'tags': instance.tags,
      'favoritesPractitionerIds': instance.favoritesPractitionerIds,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
