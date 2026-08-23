// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get practitionerId => throw _privateConstructorUsedError;
  String get sessionType =>
      throw _privateConstructorUsedError; // 'audio' or 'video'
  String get status =>
      throw _privateConstructorUsedError; // 'pending', 'confirmed', 'completed', 'cancelled', 'refunded'
  @TimestampConverter()
  DateTime get scheduledAt => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get stripePaymentIntentId => throw _privateConstructorUsedError;
  String? get meetingLink => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get practitionerName => throw _privateConstructorUsedError;
  String? get practitionerPhotoUrl => throw _privateConstructorUsedError;
  String? get userPhotoUrl => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String practitionerId,
      String sessionType,
      String status,
      @TimestampConverter() DateTime scheduledAt,
      double amount,
      String currency,
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
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? practitionerId = null,
    Object? sessionType = null,
    Object? status = null,
    Object? scheduledAt = null,
    Object? amount = null,
    Object? currency = null,
    Object? stripePaymentIntentId = freezed,
    Object? meetingLink = freezed,
    Object? userName = freezed,
    Object? practitionerName = freezed,
    Object? practitionerPhotoUrl = freezed,
    Object? userPhotoUrl = freezed,
    Object? cancellationReason = freezed,
    Object? completedAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      practitionerId: null == practitionerId
          ? _value.practitionerId
          : practitionerId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionType: null == sessionType
          ? _value.sessionType
          : sessionType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      stripePaymentIntentId: freezed == stripePaymentIntentId
          ? _value.stripePaymentIntentId
          : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      practitionerName: freezed == practitionerName
          ? _value.practitionerName
          : practitionerName // ignore: cast_nullable_to_non_nullable
              as String?,
      practitionerPhotoUrl: freezed == practitionerPhotoUrl
          ? _value.practitionerPhotoUrl
          : practitionerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String practitionerId,
      String sessionType,
      String status,
      @TimestampConverter() DateTime scheduledAt,
      double amount,
      String currency,
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
      @TimestampConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? practitionerId = null,
    Object? sessionType = null,
    Object? status = null,
    Object? scheduledAt = null,
    Object? amount = null,
    Object? currency = null,
    Object? stripePaymentIntentId = freezed,
    Object? meetingLink = freezed,
    Object? userName = freezed,
    Object? practitionerName = freezed,
    Object? practitionerPhotoUrl = freezed,
    Object? userPhotoUrl = freezed,
    Object? cancellationReason = freezed,
    Object? completedAt = freezed,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BookingModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      practitionerId: null == practitionerId
          ? _value.practitionerId
          : practitionerId // ignore: cast_nullable_to_non_nullable
              as String,
      sessionType: null == sessionType
          ? _value.sessionType
          : sessionType // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      scheduledAt: null == scheduledAt
          ? _value.scheduledAt
          : scheduledAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      stripePaymentIntentId: freezed == stripePaymentIntentId
          ? _value.stripePaymentIntentId
          : stripePaymentIntentId // ignore: cast_nullable_to_non_nullable
              as String?,
      meetingLink: freezed == meetingLink
          ? _value.meetingLink
          : meetingLink // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      practitionerName: freezed == practitionerName
          ? _value.practitionerName
          : practitionerName // ignore: cast_nullable_to_non_nullable
              as String?,
      practitionerPhotoUrl: freezed == practitionerPhotoUrl
          ? _value.practitionerPhotoUrl
          : practitionerPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationReason: freezed == cancellationReason
          ? _value.cancellationReason
          : cancellationReason // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cancelledAt: freezed == cancelledAt
          ? _value.cancelledAt
          : cancelledAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$BookingModelImpl implements _BookingModel {
  const _$BookingModelImpl(
      {required this.id,
      required this.userId,
      required this.practitionerId,
      required this.sessionType,
      required this.status,
      @TimestampConverter() required this.scheduledAt,
      required this.amount,
      required this.currency,
      this.stripePaymentIntentId,
      this.meetingLink,
      this.userName,
      this.practitionerName,
      this.practitionerPhotoUrl,
      this.userPhotoUrl,
      this.cancellationReason,
      @TimestampConverter() this.completedAt,
      @TimestampConverter() this.cancelledAt,
      @TimestampConverter() this.createdAt,
      @TimestampConverter() this.updatedAt});

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String practitionerId;
  @override
  final String sessionType;
// 'audio' or 'video'
  @override
  final String status;
// 'pending', 'confirmed', 'completed', 'cancelled', 'refunded'
  @override
  @TimestampConverter()
  final DateTime scheduledAt;
  @override
  final double amount;
  @override
  final String currency;
  @override
  final String? stripePaymentIntentId;
  @override
  final String? meetingLink;
  @override
  final String? userName;
  @override
  final String? practitionerName;
  @override
  final String? practitionerPhotoUrl;
  @override
  final String? userPhotoUrl;
  @override
  final String? cancellationReason;
  @override
  @TimestampConverter()
  final DateTime? completedAt;
  @override
  @TimestampConverter()
  final DateTime? cancelledAt;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  @TimestampConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'BookingModel(id: $id, userId: $userId, practitionerId: $practitionerId, sessionType: $sessionType, status: $status, scheduledAt: $scheduledAt, amount: $amount, currency: $currency, stripePaymentIntentId: $stripePaymentIntentId, meetingLink: $meetingLink, userName: $userName, practitionerName: $practitionerName, practitionerPhotoUrl: $practitionerPhotoUrl, userPhotoUrl: $userPhotoUrl, cancellationReason: $cancellationReason, completedAt: $completedAt, cancelledAt: $cancelledAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.practitionerId, practitionerId) ||
                other.practitionerId == practitionerId) &&
            (identical(other.sessionType, sessionType) ||
                other.sessionType == sessionType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.stripePaymentIntentId, stripePaymentIntentId) ||
                other.stripePaymentIntentId == stripePaymentIntentId) &&
            (identical(other.meetingLink, meetingLink) ||
                other.meetingLink == meetingLink) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.practitionerName, practitionerName) ||
                other.practitionerName == practitionerName) &&
            (identical(other.practitionerPhotoUrl, practitionerPhotoUrl) ||
                other.practitionerPhotoUrl == practitionerPhotoUrl) &&
            (identical(other.userPhotoUrl, userPhotoUrl) ||
                other.userPhotoUrl == userPhotoUrl) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        practitionerId,
        sessionType,
        status,
        scheduledAt,
        amount,
        currency,
        stripePaymentIntentId,
        meetingLink,
        userName,
        practitionerName,
        practitionerPhotoUrl,
        userPhotoUrl,
        cancellationReason,
        completedAt,
        cancelledAt,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
      {required final String id,
      required final String userId,
      required final String practitionerId,
      required final String sessionType,
      required final String status,
      @TimestampConverter() required final DateTime scheduledAt,
      required final double amount,
      required final String currency,
      final String? stripePaymentIntentId,
      final String? meetingLink,
      final String? userName,
      final String? practitionerName,
      final String? practitionerPhotoUrl,
      final String? userPhotoUrl,
      final String? cancellationReason,
      @TimestampConverter() final DateTime? completedAt,
      @TimestampConverter() final DateTime? cancelledAt,
      @TimestampConverter() final DateTime? createdAt,
      @TimestampConverter() final DateTime? updatedAt}) = _$BookingModelImpl;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get practitionerId;
  @override
  String get sessionType;
  @override // 'audio' or 'video'
  String get status;
  @override // 'pending', 'confirmed', 'completed', 'cancelled', 'refunded'
  @TimestampConverter()
  DateTime get scheduledAt;
  @override
  double get amount;
  @override
  String get currency;
  @override
  String? get stripePaymentIntentId;
  @override
  String? get meetingLink;
  @override
  String? get userName;
  @override
  String? get practitionerName;
  @override
  String? get practitionerPhotoUrl;
  @override
  String? get userPhotoUrl;
  @override
  String? get cancellationReason;
  @override
  @TimestampConverter()
  DateTime? get completedAt;
  @override
  @TimestampConverter()
  DateTime? get cancelledAt;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  @TimestampConverter()
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
