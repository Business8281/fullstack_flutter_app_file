// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practitioner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PractitionerModelImpl _$$PractitionerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PractitionerModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      status: json['status'] as String,
      photoUrl: json['photoUrl'] as String?,
      bio: json['bio'] as String?,
      specialties: (json['specialties'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sessionTypes: (json['sessionTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      pricePerSession: (json['pricePerSession'] as num?)?.toDouble(),
      credentials: json['credentials'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      totalReviews: (json['totalReviews'] as num?)?.toInt(),
      totalSessions: (json['totalSessions'] as num?)?.toInt(),
      availabilityIds: (json['availabilityIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
      approvedAt: const TimestampConverter().fromJson(json['approvedAt']),
    );

Map<String, dynamic> _$$PractitionerModelImplToJson(
        _$PractitionerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'status': instance.status,
      'photoUrl': instance.photoUrl,
      'bio': instance.bio,
      'specialties': instance.specialties,
      'languages': instance.languages,
      'sessionTypes': instance.sessionTypes,
      'pricePerSession': instance.pricePerSession,
      'credentials': instance.credentials,
      'rating': instance.rating,
      'totalReviews': instance.totalReviews,
      'totalSessions': instance.totalSessions,
      'availabilityIds': instance.availabilityIds,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
      'approvedAt': const TimestampConverter().toJson(instance.approvedAt),
    };
