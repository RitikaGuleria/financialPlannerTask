import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_event.freezed.dart';

@freezed
class EarningsEvent with _$EarningsEvent {
  const factory EarningsEvent.fetchEarningsCalendar(String ticker) = FetchEarningsCalendar;
  const factory EarningsEvent.fetchEarningsTranscript(String ticker, String date) = FetchEarningsTranscript;
}
