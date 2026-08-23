import 'package:dio/dio.dart';
import 'logger_service.dart';

class DioClient {
  final Dio _dio;

  DioClient(this._dio) {
    _dio
      ..options.baseUrl = 'https://api.example.com' // Placeholder
      ..options.connectTimeout = const Duration(seconds: 30)
      ..options.receiveTimeout = const Duration(seconds: 30)
      ..interceptors.add(LogInterceptor(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        logPrint: (obj) => AppLogger.d(obj.toString()),
      ));
  }

  Dio get dio => _dio;
}
