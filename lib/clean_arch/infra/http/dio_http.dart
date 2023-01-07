import 'package:dio/dio.dart';

class DioHttp {
  static const String baseUrl = 'https://63ab7090cf281dba8c22ddb9.mockapi.io';

  Dio _dio() {
    return Dio(BaseOptions(
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 500, // 60 seconds
      receiveTimeout: 60 * 500, // 60 seconds
    ));
  }

  Future<Response> get({required String url}) async {
    try {
      final response = await _dio().get("$baseUrl/$url");
      return response;
    } catch (error) {
      rethrow;
    }
  }
}
