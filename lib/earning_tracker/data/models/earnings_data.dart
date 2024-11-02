import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_data.freezed.dart';
part 'earnings_data.g.dart';

@freezed
class EarningsData with _$EarningsData {
  const factory EarningsData({
    required String date,
    required double actualEarnings,
    required double estimatedEarnings,
  }) = _EarningsData;

  // factory EarningsData.fromJson(Map<String, dynamic> json) => _$EarningsDataFromJson(json);
  factory EarningsData.fromJson(Map<String, dynamic> json) {
    return EarningsData(
      date: json['pricedate'] as String? ?? 'Unknown Date', // Handle possible null
      actualEarnings: (json['actual_eps'] as num?)?.toDouble() ?? 0.0,
      estimatedEarnings: (json['estimated_eps'] as num?)?.toDouble() ?? 0.0,
    );
  }

}


