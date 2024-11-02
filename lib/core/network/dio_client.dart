import 'package:dio/dio.dart';

class DioClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.api-ninjas.com/v1/',
      headers: {'X-Api-Key': 'YOUR_API_KEY'},
    ),
  );

  Future<Response> get(String endpoint, {Map<String, dynamic>? params}) async {
    return dio.get(endpoint, queryParameters: params);
  }
}
