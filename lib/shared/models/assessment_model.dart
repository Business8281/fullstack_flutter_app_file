import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'user_model.dart';

part 'assessment_model.freezed.dart';
part 'assessment_model.g.dart';

@freezed
class AssessmentModel with _$AssessmentModel {
  const factory AssessmentModel({
    required String id,
    required String userId,
    @Default([]) List<String> selectedPrograms,
    required Map<String, dynamic> answers, // Raw assessment answers
    String? insightSummary, // AI-generated summary
    @Default([]) List<String> userTags, // AI-generated tags
    @Default([]) List<String> recommendedSpecialties, // AI recommendations
    @TimestampConverter() DateTime? createdAt,
    @TimestampConverter() DateTime? completedAt,
  }) = _AssessmentModel;

  factory AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssessmentModelFromJson(json);
}
