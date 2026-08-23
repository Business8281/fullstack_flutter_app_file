// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get role =>
      throw _privateConstructorUsedError; // 'user', 'practitioner', 'admin'
  String get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<String> get selectedPrograms => throw _privateConstructorUsedError;
  String? get problemDescription => throw _privateConstructorUsedError;
  String? get assessmentId => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get favoritesPractitionerIds =>
      throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String role,
      String name,
      int? age,
      double? height,
      String? profession,
      String? city,
      String? country,
      String? photoUrl,
      List<String> selectedPrograms,
      String? problemDescription,
      String? assessmentId,
      List<String> tags,
      List<String> favoritesPractitionerIds,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? role = null,
    Object? name = null,
    Object? age = freezed,
    Object? height = freezed,
    Object? profession = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? photoUrl = freezed,
    Object? selectedPrograms = null,
    Object? problemDescription = freezed,
    Object? assessmentId = freezed,
    Object? tags = null,
    Object? favoritesPractitionerIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPrograms: null == selectedPrograms
          ? _value.selectedPrograms
          : selectedPrograms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      problemDescription: freezed == problemDescription
          ? _value.problemDescription
          : problemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentId: freezed == assessmentId
          ? _value.assessmentId
          : assessmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoritesPractitionerIds: null == favoritesPractitionerIds
          ? _value.favoritesPractitionerIds
          : favoritesPractitionerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String role,
      String name,
      int? age,
      double? height,
      String? profession,
      String? city,
      String? country,
      String? photoUrl,
      List<String> selectedPrograms,
      String? problemDescription,
      String? assessmentId,
      List<String> tags,
      List<String> favoritesPractitionerIds,
      @TimestampConverter() DateTime? createdAt,
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? role = null,
    Object? name = null,
    Object? age = freezed,
    Object? height = freezed,
    Object? profession = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? photoUrl = freezed,
    Object? selectedPrograms = null,
    Object? problemDescription = freezed,
    Object? assessmentId = freezed,
    Object? tags = null,
    Object? favoritesPractitionerIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedPrograms: null == selectedPrograms
          ? _value._selectedPrograms
          : selectedPrograms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      problemDescription: freezed == problemDescription
          ? _value.problemDescription
          : problemDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      assessmentId: freezed == assessmentId
          ? _value.assessmentId
          : assessmentId // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favoritesPractitionerIds: null == favoritesPractitionerIds
          ? _value._favoritesPractitionerIds
          : favoritesPractitionerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.id,
      required this.email,
      required this.role,
      required this.name,
      this.age,
      this.height,
      this.profession,
      this.city,
      this.country,
      this.photoUrl,
      final List<String> selectedPrograms = const [],
      this.problemDescription,
      this.assessmentId,
      final List<String> tags = const [],
      final List<String> favoritesPractitionerIds = const [],
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt})
      : _selectedPrograms = selectedPrograms,
        _tags = tags,
        _favoritesPractitionerIds = favoritesPractitionerIds;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String role;
// 'user', 'practitioner', 'admin'
  @override
  final String name;
  @override
  final int? age;
  @override
  final double? height;
  @override
  final String? profession;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? photoUrl;
  final List<String> _selectedPrograms;
  @override
  @JsonKey()
  List<String> get selectedPrograms {
    if (_selectedPrograms is EqualUnmodifiableListView)
      return _selectedPrograms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPrograms);
  }

  @override
  final String? problemDescription;
  @override
  final String? assessmentId;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _favoritesPractitionerIds;
  @override
  @JsonKey()
  List<String> get favoritesPractitionerIds {
    if (_favoritesPractitionerIds is EqualUnmodifiableListView)
      return _favoritesPractitionerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesPractitionerIds);
  }

  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, role: $role, name: $name, age: $age, height: $height, profession: $profession, city: $city, country: $country, photoUrl: $photoUrl, selectedPrograms: $selectedPrograms, problemDescription: $problemDescription, assessmentId: $assessmentId, tags: $tags, favoritesPractitionerIds: $favoritesPractitionerIds, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._selectedPrograms, _selectedPrograms) &&
            (identical(other.problemDescription, problemDescription) ||
                other.problemDescription == problemDescription) &&
            (identical(other.assessmentId, assessmentId) ||
                other.assessmentId == assessmentId) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(
                other._favoritesPractitionerIds, _favoritesPractitionerIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      role,
      name,
      age,
      height,
      profession,
      city,
      country,
      photoUrl,
      const DeepCollectionEquality().hash(_selectedPrograms),
      problemDescription,
      assessmentId,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_favoritesPractitionerIds),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String id,
      required final String email,
      required final String role,
      required final String name,
      final int? age,
      final double? height,
      final String? profession,
      final String? city,
      final String? country,
      final String? photoUrl,
      final List<String> selectedPrograms,
      final String? problemDescription,
      final String? assessmentId,
      final List<String> tags,
      final List<String> favoritesPractitionerIds,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get role;
  @override // 'user', 'practitioner', 'admin'
  String get name;
  @override
  int? get age;
  @override
  double? get height;
  @override
  String? get profession;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get photoUrl;
  @override
  List<String> get selectedPrograms;
  @override
  String? get problemDescription;
  @override
  String? get assessmentId;
  @override
  List<String> get tags;
  @override
  List<String> get favoritesPractitionerIds;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
