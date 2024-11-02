// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EarningsDataImpl _$$EarningsDataImplFromJson(Map<String, dynamic> json) =>
    _$EarningsDataImpl(
      date: json['date'] as String,
      actualEarnings: (json['actualEarnings'] as num).toDouble(),
      estimatedEarnings: (json['estimatedEarnings'] as num).toDouble(),
    );

Map<String, dynamic> _$$EarningsDataImplToJson(_$EarningsDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'actualEarnings': instance.actualEarnings,
      'estimatedEarnings': instance.estimatedEarnings,
    };
