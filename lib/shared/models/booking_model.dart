import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user_model.dart';

part 'booking_model.freezed.dart';
part 'booking_model.g.dart';

@freezed
class BookingModel with _$BookingModel {
  const factory BookingModel({
    required String id,
    required String userId,
    required String practitionerId,
    required String sessionType, // 'audio' or 'video'
    required String status, // 'pending', 'confirmed', 'completed', 'cancelled', 'refunded'
    @TimestampConverter() required DateTime scheduledAt,
    required double amount,
    required String currency,
    String? stripePaymentIntentId,
    String? meetingLink,
    String? userName,
    String? practitionerName,
    String? practitionerPhotoUrl,
    String? userPhotoUrl,
    String? cancellationReason,
    @TimestampConverter() DateTime? completedAt,
    @TimestampConverter() DateTime? cancelledAt,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
  }) = _BookingModel;

  factory BookingModel.fromJson(Map<String, dynamic> json) =>
      _$BookingModelFromJson(json);
}
