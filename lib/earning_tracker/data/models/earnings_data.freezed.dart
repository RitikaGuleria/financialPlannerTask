// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarningsData _$EarningsDataFromJson(Map<String, dynamic> json) {
  return _EarningsData.fromJson(json);
}

/// @nodoc
mixin _$EarningsData {
  String get date => throw _privateConstructorUsedError;
  double get actualEarnings => throw _privateConstructorUsedError;
  double get estimatedEarnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarningsDataCopyWith<EarningsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsDataCopyWith<$Res> {
  factory $EarningsDataCopyWith(
          EarningsData value, $Res Function(EarningsData) then) =
      _$EarningsDataCopyWithImpl<$Res, EarningsData>;
  @useResult
  $Res call({String date, double actualEarnings, double estimatedEarnings});
}

/// @nodoc
class _$EarningsDataCopyWithImpl<$Res, $Val extends EarningsData>
    implements $EarningsDataCopyWith<$Res> {
  _$EarningsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? actualEarnings = null,
    Object? estimatedEarnings = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      actualEarnings: null == actualEarnings
          ? _value.actualEarnings
          : actualEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedEarnings: null == estimatedEarnings
          ? _value.estimatedEarnings
          : estimatedEarnings // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarningsDataImplCopyWith<$Res>
    implements $EarningsDataCopyWith<$Res> {
  factory _$$EarningsDataImplCopyWith(
          _$EarningsDataImpl value, $Res Function(_$EarningsDataImpl) then) =
      __$$EarningsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date, double actualEarnings, double estimatedEarnings});
}

/// @nodoc
class __$$EarningsDataImplCopyWithImpl<$Res>
    extends _$EarningsDataCopyWithImpl<$Res, _$EarningsDataImpl>
    implements _$$EarningsDataImplCopyWith<$Res> {
  __$$EarningsDataImplCopyWithImpl(
      _$EarningsDataImpl _value, $Res Function(_$EarningsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? actualEarnings = null,
    Object? estimatedEarnings = null,
  }) {
    return _then(_$EarningsDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      actualEarnings: null == actualEarnings
          ? _value.actualEarnings
          : actualEarnings // ignore: cast_nullable_to_non_nullable
              as double,
      estimatedEarnings: null == estimatedEarnings
          ? _value.estimatedEarnings
          : estimatedEarnings // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarningsDataImpl implements _EarningsData {
  const _$EarningsDataImpl(
      {required this.date,
      required this.actualEarnings,
      required this.estimatedEarnings});

  factory _$EarningsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarningsDataImplFromJson(json);

  @override
  final String date;
  @override
  final double actualEarnings;
  @override
  final double estimatedEarnings;

  @override
  String toString() {
    return 'EarningsData(date: $date, actualEarnings: $actualEarnings, estimatedEarnings: $estimatedEarnings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarningsDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.actualEarnings, actualEarnings) ||
                other.actualEarnings == actualEarnings) &&
            (identical(other.estimatedEarnings, estimatedEarnings) ||
                other.estimatedEarnings == estimatedEarnings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, actualEarnings, estimatedEarnings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EarningsDataImplCopyWith<_$EarningsDataImpl> get copyWith =>
      __$$EarningsDataImplCopyWithImpl<_$EarningsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarningsDataImplToJson(
      this,
    );
  }
}

abstract class _EarningsData implements EarningsData {
  const factory _EarningsData(
      {required final String date,
      required final double actualEarnings,
      required final double estimatedEarnings}) = _$EarningsDataImpl;

  factory _EarningsData.fromJson(Map<String, dynamic> json) =
      _$EarningsDataImpl.fromJson;

  @override
  String get date;
  @override
  double get actualEarnings;
  @override
  double get estimatedEarnings;
  @override
  @JsonKey(ignore: true)
  _$$EarningsDataImplCopyWith<_$EarningsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
