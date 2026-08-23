// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practitioner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PractitionerModel _$PractitionerModelFromJson(Map<String, dynamic> json) {
  return _PractitionerModel.fromJson(json);
}

/// @nodoc
mixin _$PractitionerModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'approved', 'rejected', 'suspended'
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  List<String> get specialties => throw _privateConstructorUsedError;
  List<String> get languages => throw _privateConstructorUsedError;
  List<String> get sessionTypes =>
      throw _privateConstructorUsedError; // ['audio', 'video']
  double? get pricePerSession => throw _privateConstructorUsedError;
  String? get credentials => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  int? get totalReviews => throw _privateConstructorUsedError;
  int? get totalSessions => throw _privateConstructorUsedError;
  List<String> get availabilityIds => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get approvedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PractitionerModelCopyWith<PractitionerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PractitionerModelCopyWith<$Res> {
  factory $PractitionerModelCopyWith(
          PractitionerModel value, $Res Function(PractitionerModel) then) =
      _$PractitionerModelCopyWithImpl<$Res, PractitionerModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String status,
      String? photoUrl,
      String? bio,
      List<String> specialties,
      List<String> languages,
      List<String> sessionTypes,
      double? pricePerSession,
      String? credentials,
      double? rating,
      int? totalReviews,
      int? totalSessions,
      List<String> availabilityIds,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? approvedAt});
}

/// @nodoc
class _$PractitionerModelCopyWithImpl<$Res, $Val extends PractitionerModel>
    implements $PractitionerModelCopyWith<$Res> {
  _$PractitionerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? status = null,
    Object? photoUrl = freezed,
    Object? bio = freezed,
    Object? specialties = null,
    Object? languages = null,
    Object? sessionTypes = null,
    Object? pricePerSession = freezed,
    Object? credentials = freezed,
    Object? rating = freezed,
    Object? totalReviews = freezed,
    Object? totalSessions = freezed,
    Object? availabilityIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? approvedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: null == specialties
          ? _value.specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sessionTypes: null == sessionTypes
          ? _value.sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pricePerSession: freezed == pricePerSession
          ? _value.pricePerSession
          : pricePerSession // ignore: cast_nullable_to_non_nullable
              as double?,
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      availabilityIds: null == availabilityIds
          ? _value.availabilityIds
          : availabilityIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PractitionerModelImplCopyWith<$Res>
    implements $PractitionerModelCopyWith<$Res> {
  factory _$$PractitionerModelImplCopyWith(_$PractitionerModelImpl value,
          $Res Function(_$PractitionerModelImpl) then) =
      __$$PractitionerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String status,
      String? photoUrl,
      String? bio,
      List<String> specialties,
      List<String> languages,
      List<String> sessionTypes,
      double? pricePerSession,
      String? credentials,
      double? rating,
      int? totalReviews,
      int? totalSessions,
      List<String> availabilityIds,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt,
      @TimestampConverter() DateTime? approvedAt});
}

/// @nodoc
class __$$PractitionerModelImplCopyWithImpl<$Res>
    extends _$PractitionerModelCopyWithImpl<$Res, _$PractitionerModelImpl>
    implements _$$PractitionerModelImplCopyWith<$Res> {
  __$$PractitionerModelImplCopyWithImpl(_$PractitionerModelImpl _value,
      $Res Function(_$PractitionerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? status = null,
    Object? photoUrl = freezed,
    Object? bio = freezed,
    Object? specialties = null,
    Object? languages = null,
    Object? sessionTypes = null,
    Object? pricePerSession = freezed,
    Object? credentials = freezed,
    Object? rating = freezed,
    Object? totalReviews = freezed,
    Object? totalSessions = freezed,
    Object? availabilityIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? approvedAt = freezed,
  }) {
    return _then(_$PractitionerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      specialties: null == specialties
          ? _value._specialties
          : specialties // ignore: cast_nullable_to_non_nullable
              as List<String>,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sessionTypes: null == sessionTypes
          ? _value._sessionTypes
          : sessionTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pricePerSession: freezed == pricePerSession
          ? _value.pricePerSession
          : pricePerSession // ignore: cast_nullable_to_non_nullable
              as double?,
      credentials: freezed == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      totalSessions: freezed == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int?,
      availabilityIds: null == availabilityIds
          ? _value._availabilityIds
          : availabilityIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      approvedAt: freezed == approvedAt
          ? _value.approvedAt
          : approvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PractitionerModelImpl implements _PractitionerModel {
  const _$PractitionerModelImpl(
      {required this.id,
      required this.email,
      required this.name,
      required this.status,
      this.photoUrl,
      this.bio,
      final List<String> specialties = const [],
      final List<String> languages = const [],
      final List<String> sessionTypes = const [],
      this.pricePerSession,
      this.credentials,
      this.rating,
      this.totalReviews,
      this.totalSessions,
      final List<String> availabilityIds = const [],
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt,
      @TimestampConverter() this.approvedAt})
      : _specialties = specialties,
        _languages = languages,
        _sessionTypes = sessionTypes,
        _availabilityIds = availabilityIds;

  factory _$PractitionerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PractitionerModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String status;
// 'pending', 'approved', 'rejected', 'suspended'
  @override
  final String? photoUrl;
  @override
  final String? bio;
  final List<String> _specialties;
  @override
  @JsonKey()
  List<String> get specialties {
    if (_specialties is EqualUnmodifiableListView) return _specialties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialties);
  }

  final List<String> _languages;
  @override
  @JsonKey()
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<String> _sessionTypes;
  @override
  @JsonKey()
  List<String> get sessionTypes {
    if (_sessionTypes is EqualUnmodifiableListView) return _sessionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessionTypes);
  }

// ['audio', 'video']
  @override
  final double? pricePerSession;
  @override
  final String? credentials;
  @override
  final double? rating;
  @override
  final int? totalReviews;
  @override
  final int? totalSessions;
  final List<String> _availabilityIds;
  @override
  @JsonKey()
  List<String> get availabilityIds {
    if (_availabilityIds is EqualUnmodifiableListView) return _availabilityIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availabilityIds);
  }

  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;
  @override
  @TimestampConverter()
  final DateTime? approvedAt;

  @override
  String toString() {
    return 'PractitionerModel(id: $id, email: $email, name: $name, status: $status, photoUrl: $photoUrl, bio: $bio, specialties: $specialties, languages: $languages, sessionTypes: $sessionTypes, pricePerSession: $pricePerSession, credentials: $credentials, rating: $rating, totalReviews: $totalReviews, totalSessions: $totalSessions, availabilityIds: $availabilityIds, createdAt: $createdAt, updatedAt: $updatedAt, approvedAt: $approvedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PractitionerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            const DeepCollectionEquality()
                .equals(other._specialties, _specialties) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._sessionTypes, _sessionTypes) &&
            (identical(other.pricePerSession, pricePerSession) ||
                other.pricePerSession == pricePerSession) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            const DeepCollectionEquality()
                .equals(other._availabilityIds, _availabilityIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.approvedAt, approvedAt) ||
                other.approvedAt == approvedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      status,
      photoUrl,
      bio,
      const DeepCollectionEquality().hash(_specialties),
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_sessionTypes),
      pricePerSession,
      credentials,
      rating,
      totalReviews,
      totalSessions,
      const DeepCollectionEquality().hash(_availabilityIds),
      createdAt,
      updatedAt,
      approvedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PractitionerModelImplCopyWith<_$PractitionerModelImpl> get copyWith =>
      __$$PractitionerModelImplCopyWithImpl<_$PractitionerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PractitionerModelImplToJson(
      this,
    );
  }
}

abstract class _PractitionerModel implements PractitionerModel {
  const factory _PractitionerModel(
          {required final String id,
          required final String email,
          required final String name,
          required final String status,
          final String? photoUrl,
          final String? bio,
          final List<String> specialties,
          final List<String> languages,
          final List<String> sessionTypes,
          final double? pricePerSession,
          final String? credentials,
          final double? rating,
          final int? totalReviews,
          final int? totalSessions,
          final List<String> availabilityIds,
          @TimestampConverter() final DateTime? createdAt,
          @TimestampConverter() final DateTime? updatedAt,
          @TimestampConverter() final DateTime? approvedAt}) =
      _$PractitionerModelImpl;

  factory _PractitionerModel.fromJson(Map<String, dynamic> json) =
      _$PractitionerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get status;
  @override // 'pending', 'approved', 'rejected', 'suspended'
  String? get photoUrl;
  @override
  String? get bio;
  @override
  List<String> get specialties;
  @override
  List<String> get languages;
  @override
  List<String> get sessionTypes;
  @override // ['audio', 'video']
  double? get pricePerSession;
  @override
  String? get credentials;
  @override
  double? get rating;
  @override
  int? get totalReviews;
  @override
  int? get totalSessions;
  @override
  List<String> get availabilityIds;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @TimestampConverter()
  DateTime? get approvedAt;
  @override
  @JsonKey(ignore: true)
  _$$PractitionerModelImplCopyWith<_$PractitionerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
