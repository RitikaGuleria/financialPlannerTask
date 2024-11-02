import 'package:earning_tracker/earning_tracker/data/models/earnings_data.dart';

abstract class EarningsRepository {
  Future<List<EarningsData>> fetchEarningsCalendar(String ticker);
  Future<String> fetchEarningsTranscript(String ticker, String date);
}
