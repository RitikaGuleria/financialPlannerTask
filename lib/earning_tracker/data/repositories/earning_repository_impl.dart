import 'package:earning_tracker/earning_tracker/data/data_sources/api_services.dart';
import 'package:earning_tracker/earning_tracker/data/models/earnings_data.dart';
import 'package:earning_tracker/earning_tracker/domain/repositories/earning_repositories.dart';

class EarningsRepositoryImpl implements EarningsRepository {
  final ApiService apiService = ApiService();

  @override
  Future<List<EarningsData>> fetchEarningsCalendar(String ticker) async {
    return apiService.getEarningsCalendar(ticker);
  }

  @override
  Future<String> fetchEarningsTranscript(String ticker, String date) async {
    return apiService.getEarningsCallTranscript(ticker, date);
  }
}
