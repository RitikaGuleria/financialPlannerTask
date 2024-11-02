import 'package:dio/dio.dart';
import 'package:earning_tracker/core/network/dio_client.dart';
import 'package:earning_tracker/earning_tracker/data/models/earnings_data.dart';

class ApiService {
  final DioClient _dioClient = DioClient();

  Future<List<EarningsData>> getEarningsCalendar(String ticker) async {
    final response = await _dioClient.get('earningscalendar', params: {'ticker': ticker});
    print('Earnings Calendar Response: ${response.data}'); // This line is helpful for debugging
    return (response.data as List).map((json) => EarningsData.fromJson(json)).toList();
  }

  Future<String> getEarningsCallTranscript(String ticker, String date) async {
    final response = await _dioClient.get('earningscalltranscript', params: {'ticker': ticker, 'date': date});
    return response.data['transcript'];
  }
}
