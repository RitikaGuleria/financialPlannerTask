import 'package:earning_tracker/earning_tracker/data/models/earnings_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_state.freezed.dart';

@freezed
class EarningsState with _$EarningsState {
  const factory EarningsState.initial() = EarningsInitial;
  const factory EarningsState.loading() = EarningsLoading;
  const factory EarningsState.loaded(List<EarningsData> earningsData) = EarningsLoaded;
  const factory EarningsState.transcriptLoaded(String transcript) = TranscriptLoaded;
  const factory EarningsState.error(String message) = EarningsError;
}
