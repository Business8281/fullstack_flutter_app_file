// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingModelImpl _$$BookingModelImplFromJson(Map<String, dynamic> json) =>
    _$BookingModelImpl(
      id: json['id'] as String,
      userId: json['userId'] as String,
      practitionerId: json['practitionerId'] as String,
      sessionType: json['sessionType'] as String,
      status: json['status'] as String,
      scheduledAt: DateTime.parse(json['scheduledAt'] as String),
      amount: (json['amount'] as num).toDouble(),
      currency: json['currency'] as String,
      stripePaymentIntentId: json['stripePaymentIntentId'] as String?,
      meetingLink: json['meetingLink'] as String?,
      userName: json['userName'] as String?,
      practitionerName: json['practitionerName'] as String?,
      practitionerPhotoUrl: json['practitionerPhotoUrl'] as String?,
      userPhotoUrl: json['userPhotoUrl'] as String?,
      cancellationReason: json['cancellationReason'] as String?,
      completedAt: const TimestampConverter().fromJson(json['completedAt']),
      cancelledAt: const TimestampConverter().fromJson(json['cancelledAt']),
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      updatedAt: const TimestampConverter().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$BookingModelImplToJson(_$BookingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'practitionerId': instance.practitionerId,
      'sessionType': instance.sessionType,
      'status': instance.status,
      'scheduledAt': instance.scheduledAt.toIso8601String(),
      'amount': instance.amount,
      'currency': instance.currency,
      'stripePaymentIntentId': instance.stripePaymentIntentId,
      'meetingLink': instance.meetingLink,
      'userName': instance.userName,
      'practitionerName': instance.practitionerName,
      'practitionerPhotoUrl': instance.practitionerPhotoUrl,
      'userPhotoUrl': instance.userPhotoUrl,
      'cancellationReason': instance.cancellationReason,
      'completedAt': const TimestampConverter().toJson(instance.completedAt),
      'cancelledAt': const TimestampConverter().toJson(instance.cancelledAt),
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };
