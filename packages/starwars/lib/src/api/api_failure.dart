import 'package:dio/dio.dart';

class ApiFailure implements Exception {
  final String message;

  ApiFailure([this.message = 'Unknown error']);

  factory ApiFailure.fromDioErrorType(DioError e) {
    switch (e.type) {
      case DioErrorType.connectTimeout:
        return ApiFailure('Connection timeout');
      case DioErrorType.sendTimeout:
        return ApiFailure('Send timeout');
      case DioErrorType.receiveTimeout:
        return ApiFailure('Receive timeout');
      case DioErrorType.response:
        return ApiFailure('Response error');
      case DioErrorType.cancel:
        return ApiFailure('Request cancelled');
      case DioErrorType.other:
        return ApiFailure();
    }
  }
}
