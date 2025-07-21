import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobile_kit/mobile_kit.dart';

extension DioExceptionExt on DioException {
  ServerException toServerException() {
    switch (type) {
      case DioExceptionType.cancel:
        return ServerException(0, 'Request to API server was cancelled');
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.connectionError:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return ServerException(response?.statusCode ?? 0, 'Connection to API Server error');
      case DioExceptionType.badCertificate:
        return ServerException(495, 'Bad SSL certificate');
      case DioExceptionType.badResponse:
        if (response?.statusCode == 401) {
          return TokenExpiredException();
        } else {
          final data = response?.data as Map?;
          return ServerException(response?.statusCode ?? 0, (data?['error'] as Map)['details'] ?? response.toString());
        }
      case DioExceptionType.unknown:
        if (error != null && error is SocketException) {
          final socketMessage = (error as SocketException).message;
          return ServerException(response?.statusCode ?? 0, 'Socket error: $socketMessage');
        }
        if (error != null && error is HttpException) {
          final socketMessage = (error as HttpException).message;
          return ServerException(response?.statusCode ?? 0, 'HttpException: $socketMessage');
        }
        return ServerException(0,'Something went wrong');
    }
  }
}

