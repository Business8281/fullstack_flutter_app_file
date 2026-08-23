import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user_model.dart';

part 'practitioner_model.freezed.dart';
part 'practitioner_model.g.dart';

@freezed
class PractitionerModel with _$PractitionerModel {
  const factory PractitionerModel({
    required String id,
    required String email,
    required String name,
    required String status, // 'pending', 'approved', 'rejected', 'suspended'
    String? photoUrl,
    String? bio,
    @Default([]) List<String> specialties,
    @Default([]) List<String> languages,
    @Default([]) List<String> sessionTypes, // ['audio', 'video']
    double? pricePerSession,
    String? credentials,
    double? rating,
    int? totalReviews,
    int? totalSessions,
    @Default([]) List<String> availabilityIds,
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? updatedAt,
    @TimestampConverter() DateTime? approvedAt,
  }) = _PractitionerModel;

  factory PractitionerModel.fromJson(Map<String, dynamic> json) =>
      _$PractitionerModelFromJson(json);
}
