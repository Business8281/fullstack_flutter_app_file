// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AssessmentModel _$AssessmentModelFromJson(Map<String, dynamic> json) {
  return _AssessmentModel.fromJson(json);
}

/// @nodoc
mixin _$AssessmentModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  List<String> get selectedPrograms => throw _privateConstructorUsedError;
  Map<String, dynamic> get answers =>
      throw _privateConstructorUsedError; // Raw assessment answers
  String? get insightSummary =>
      throw _privateConstructorUsedError; // AI-generated summary
  List<String> get userTags =>
      throw _privateConstructorUsedError; // AI-generated tags
  List<String> get recommendedSpecialties =>
      throw _privateConstructorUsedError; // AI recommendations
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentModelCopyWith<AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentModelCopyWith<$Res> {
  factory $AssessmentModelCopyWith(
          AssessmentModel value, $Res Function(AssessmentModel) then) =
      _$AssessmentModelCopyWithImpl<$Res, AssessmentModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      List<String> selectedPrograms,
      Map<String, dynamic> answers,
      String? insightSummary,
      List<String> userTags,
      List<String> recommendedSpecialties,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? completedAt});
}

/// @nodoc
class _$AssessmentModelCopyWithImpl<$Res, $Val extends AssessmentModel>
    implements $AssessmentModelCopyWith<$Res> {
  _$AssessmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? selectedPrograms = null,
    Object? answers = null,
    Object? insightSummary = freezed,
    Object? userTags = null,
    Object? recommendedSpecialties = null,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPrograms: null == selectedPrograms
          ? _value.selectedPrograms
          : selectedPrograms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insightSummary: freezed == insightSummary
          ? _value.insightSummary
          : insightSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      userTags: null == userTags
          ? _value.userTags
          : userTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendedSpecialties: null == recommendedSpecialties
          ? _value.recommendedSpecialties
          : recommendedSpecialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentModelImplCopyWith<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  factory _$$AssessmentModelImplCopyWith(_$AssessmentModelImpl value,
          $Res Function(_$AssessmentModelImpl) then) =
      __$$AssessmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      List<String> selectedPrograms,
      Map<String, dynamic> answers,
      String? insightSummary,
      List<String> userTags,
      List<String> recommendedSpecialties,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? completedAt});
}

/// @nodoc
class __$$AssessmentModelImplCopyWithImpl<$Res>
    extends _$AssessmentModelCopyWithImpl<$Res, _$AssessmentModelImpl>
    implements _$$AssessmentModelImplCopyWith<$Res> {
  __$$AssessmentModelImplCopyWithImpl(
      _$AssessmentModelImpl _value, $Res Function(_$AssessmentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? selectedPrograms = null,
    Object? answers = null,
    Object? insightSummary = freezed,
    Object? userTags = null,
    Object? recommendedSpecialties = null,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
  }) {
    return _then(_$AssessmentModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPrograms: null == selectedPrograms
          ? _value._selectedPrograms
          : selectedPrograms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      insightSummary: freezed == insightSummary
          ? _value.insightSummary
          : insightSummary // ignore: cast_nullable_to_non_nullable
              as String?,
      userTags: null == userTags
          ? _value._userTags
          : userTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      recommendedSpecialties: null == recommendedSpecialties
          ? _value._recommendedSpecialties
          : recommendedSpecialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentModelImpl implements _AssessmentModel {
  const _$AssessmentModelImpl(
      {required this.id,
      required this.userId,
      final List<String> selectedPrograms = const [],
      required final Map<String, dynamic> answers,
      this.insightSummary,
      final List<String> userTags = const [],
      final List<String> recommendedSpecialties = const [],
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.completedAt})
      : _selectedPrograms = selectedPrograms,
        _answers = answers,
        _userTags = userTags,
        _recommendedSpecialties = recommendedSpecialties;

  factory _$AssessmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  final List<String> _selectedPrograms;
  @override
  @JsonKey()
  List<String> get selectedPrograms {
    if (_selectedPrograms is EqualUnmodifiableListView)
      return _selectedPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPrograms);
  }

  final Map<String, dynamic> _answers;
  @override
  Map<String, dynamic> get answers {
    if (_answers is EqualUnmodifiableMapView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_answers);
  }

// Raw assessment answers
  @override
  final String? insightSummary;
// AI-generated summary
  final List<String> _userTags;
// AI-generated summary
  @override
  @JsonKey()
  List<String> get userTags {
    if (_userTags is EqualUnmodifiableListView) return _userTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userTags);
  }

// AI-generated tags
  final List<String> _recommendedSpecialties;
// AI-generated tags
  @override
  @JsonKey()
  List<String> get recommendedSpecialties {
    if (_recommendedSpecialties is EqualUnmodifiableListView)
      return _recommendedSpecialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedSpecialties);
  }

// AI recommendations
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? completedAt;

  @override
  String toString() {
    return 'AssessmentModel(id: $id, userId: $userId, selectedPrograms: $selectedPrograms, answers: $answers, insightSummary: $insightSummary, userTags: $userTags, recommendedSpecialties: $recommendedSpecialties, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._selectedPrograms, _selectedPrograms) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.insightSummary, insightSummary) ||
                other.insightSummary == insightSummary) &&
            const DeepCollectionEquality().equals(other._userTags, _userTags) &&
            const DeepCollectionEquality().equals(
                other._recommendedSpecialties, _recommendedSpecialties) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      const DeepCollectionEquality().hash(_selectedPrograms),
      const DeepCollectionEquality().hash(_answers),
      insightSummary,
      const DeepCollectionEquality().hash(_userTags),
      const DeepCollectionEquality().hash(_recommendedSpecialties),
      createdAt,
      completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentModelImplCopyWith<_$AssessmentModelImpl> get copyWith =>
      __$$AssessmentModelImplCopyWithImpl<_$AssessmentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentModelImplToJson(
      this,
    );
  }
}

abstract class _AssessmentModel implements AssessmentModel {
  const factory _AssessmentModel(
          {required final String id,
          required final String userId,
          final List<String> selectedPrograms,
          required final Map<String, dynamic> answers,
          final String? insightSummary,
          final List<String> userTags,
          final List<String> recommendedSpecialties,
          @TimestampConverter() final DateTime? createdAt,
          @TimestampConverter() final DateTime? completedAt}) =
      _$AssessmentModelImpl;

  factory _AssessmentModel.fromJson(Map<String, dynamic> json) =
      _$AssessmentModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  List<String> get selectedPrograms;
  @override
  Map<String, dynamic> get answers;
  @override // Raw assessment answers
  String? get insightSummary;
  @override // AI-generated summary
  List<String> get userTags;
  @override // AI-generated tags
  List<String> get recommendedSpecialties;
  @override // AI recommendations
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$AssessmentModelImplCopyWith<_$AssessmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
