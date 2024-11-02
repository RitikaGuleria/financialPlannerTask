// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EarningsEvent {
  String get ticker => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker) fetchEarningsCalendar,
    required TResult Function(String ticker, String date)
        fetchEarningsTranscript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker)? fetchEarningsCalendar,
    TResult? Function(String ticker, String date)? fetchEarningsTranscript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker)? fetchEarningsCalendar,
    TResult Function(String ticker, String date)? fetchEarningsTranscript,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsCalendar value)
        fetchEarningsCalendar,
    required TResult Function(FetchEarningsTranscript value)
        fetchEarningsTranscript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsCalendar value)? fetchEarningsCalendar,
    TResult? Function(FetchEarningsTranscript value)? fetchEarningsTranscript,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsCalendar value)? fetchEarningsCalendar,
    TResult Function(FetchEarningsTranscript value)? fetchEarningsTranscript,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningsEventCopyWith<EarningsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningsEventCopyWith<$Res> {
  factory $EarningsEventCopyWith(
          EarningsEvent value, $Res Function(EarningsEvent) then) =
      _$EarningsEventCopyWithImpl<$Res, EarningsEvent>;
  @useResult
  $Res call({String ticker});
}

/// @nodoc
class _$EarningsEventCopyWithImpl<$Res, $Val extends EarningsEvent>
    implements $EarningsEventCopyWith<$Res> {
  _$EarningsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
  }) {
    return _then(_value.copyWith(
      ticker: null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchEarningsCalendarImplCopyWith<$Res>
    implements $EarningsEventCopyWith<$Res> {
  factory _$$FetchEarningsCalendarImplCopyWith(
          _$FetchEarningsCalendarImpl value,
          $Res Function(_$FetchEarningsCalendarImpl) then) =
      __$$FetchEarningsCalendarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticker});
}

/// @nodoc
class __$$FetchEarningsCalendarImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$FetchEarningsCalendarImpl>
    implements _$$FetchEarningsCalendarImplCopyWith<$Res> {
  __$$FetchEarningsCalendarImplCopyWithImpl(_$FetchEarningsCalendarImpl _value,
      $Res Function(_$FetchEarningsCalendarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
  }) {
    return _then(_$FetchEarningsCalendarImpl(
      null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEarningsCalendarImpl implements FetchEarningsCalendar {
  const _$FetchEarningsCalendarImpl(this.ticker);

  @override
  final String ticker;

  @override
  String toString() {
    return 'EarningsEvent.fetchEarningsCalendar(ticker: $ticker)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEarningsCalendarImpl &&
            (identical(other.ticker, ticker) || other.ticker == ticker));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticker);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEarningsCalendarImplCopyWith<_$FetchEarningsCalendarImpl>
      get copyWith => __$$FetchEarningsCalendarImplCopyWithImpl<
          _$FetchEarningsCalendarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker) fetchEarningsCalendar,
    required TResult Function(String ticker, String date)
        fetchEarningsTranscript,
  }) {
    return fetchEarningsCalendar(ticker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker)? fetchEarningsCalendar,
    TResult? Function(String ticker, String date)? fetchEarningsTranscript,
  }) {
    return fetchEarningsCalendar?.call(ticker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker)? fetchEarningsCalendar,
    TResult Function(String ticker, String date)? fetchEarningsTranscript,
    required TResult orElse(),
  }) {
    if (fetchEarningsCalendar != null) {
      return fetchEarningsCalendar(ticker);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsCalendar value)
        fetchEarningsCalendar,
    required TResult Function(FetchEarningsTranscript value)
        fetchEarningsTranscript,
  }) {
    return fetchEarningsCalendar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsCalendar value)? fetchEarningsCalendar,
    TResult? Function(FetchEarningsTranscript value)? fetchEarningsTranscript,
  }) {
    return fetchEarningsCalendar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsCalendar value)? fetchEarningsCalendar,
    TResult Function(FetchEarningsTranscript value)? fetchEarningsTranscript,
    required TResult orElse(),
  }) {
    if (fetchEarningsCalendar != null) {
      return fetchEarningsCalendar(this);
    }
    return orElse();
  }
}

abstract class FetchEarningsCalendar implements EarningsEvent {
  const factory FetchEarningsCalendar(final String ticker) =
      _$FetchEarningsCalendarImpl;

  @override
  String get ticker;
  @override
  @JsonKey(ignore: true)
  _$$FetchEarningsCalendarImplCopyWith<_$FetchEarningsCalendarImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchEarningsTranscriptImplCopyWith<$Res>
    implements $EarningsEventCopyWith<$Res> {
  factory _$$FetchEarningsTranscriptImplCopyWith(
          _$FetchEarningsTranscriptImpl value,
          $Res Function(_$FetchEarningsTranscriptImpl) then) =
      __$$FetchEarningsTranscriptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ticker, String date});
}

/// @nodoc
class __$$FetchEarningsTranscriptImplCopyWithImpl<$Res>
    extends _$EarningsEventCopyWithImpl<$Res, _$FetchEarningsTranscriptImpl>
    implements _$$FetchEarningsTranscriptImplCopyWith<$Res> {
  __$$FetchEarningsTranscriptImplCopyWithImpl(
      _$FetchEarningsTranscriptImpl _value,
      $Res Function(_$FetchEarningsTranscriptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticker = null,
    Object? date = null,
  }) {
    return _then(_$FetchEarningsTranscriptImpl(
      null == ticker
          ? _value.ticker
          : ticker // ignore: cast_nullable_to_non_nullable
              as String,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchEarningsTranscriptImpl implements FetchEarningsTranscript {
  const _$FetchEarningsTranscriptImpl(this.ticker, this.date);

  @override
  final String ticker;
  @override
  final String date;

  @override
  String toString() {
    return 'EarningsEvent.fetchEarningsTranscript(ticker: $ticker, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchEarningsTranscriptImpl &&
            (identical(other.ticker, ticker) || other.ticker == ticker) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticker, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchEarningsTranscriptImplCopyWith<_$FetchEarningsTranscriptImpl>
      get copyWith => __$$FetchEarningsTranscriptImplCopyWithImpl<
          _$FetchEarningsTranscriptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ticker) fetchEarningsCalendar,
    required TResult Function(String ticker, String date)
        fetchEarningsTranscript,
  }) {
    return fetchEarningsTranscript(ticker, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ticker)? fetchEarningsCalendar,
    TResult? Function(String ticker, String date)? fetchEarningsTranscript,
  }) {
    return fetchEarningsTranscript?.call(ticker, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ticker)? fetchEarningsCalendar,
    TResult Function(String ticker, String date)? fetchEarningsTranscript,
    required TResult orElse(),
  }) {
    if (fetchEarningsTranscript != null) {
      return fetchEarningsTranscript(ticker, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchEarningsCalendar value)
        fetchEarningsCalendar,
    required TResult Function(FetchEarningsTranscript value)
        fetchEarningsTranscript,
  }) {
    return fetchEarningsTranscript(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchEarningsCalendar value)? fetchEarningsCalendar,
    TResult? Function(FetchEarningsTranscript value)? fetchEarningsTranscript,
  }) {
    return fetchEarningsTranscript?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchEarningsCalendar value)? fetchEarningsCalendar,
    TResult Function(FetchEarningsTranscript value)? fetchEarningsTranscript,
    required TResult orElse(),
  }) {
    if (fetchEarningsTranscript != null) {
      return fetchEarningsTranscript(this);
    }
    return orElse();
  }
}

abstract class FetchEarningsTranscript implements EarningsEvent {
  const factory FetchEarningsTranscript(
      final String ticker, final String date) = _$FetchEarningsTranscriptImpl;

  @override
  String get ticker;
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$FetchEarningsTranscriptImplCopyWith<_$FetchEarningsTranscriptImpl>
      get copyWith => throw _privateConstructorUsedError;
}
