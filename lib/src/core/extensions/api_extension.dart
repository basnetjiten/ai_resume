/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'package:dio/dio.dart';
import '../errors/api_exception.dart';

extension ApiExceptionDioX on DioException {
  ApiException get toException {
    int? _statusCode;
    dynamic _apiData;
    switch (type) {
      case DioExceptionType.sendTimeout:
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
        return const ApiException.timeOut(message: 'Connection Error');

      case DioExceptionType.badResponse:
        _statusCode = response?.statusCode;
        _apiData = response?.data;

        return ApiException.serverException(message: 'Server Error ${response?.data}');
      default:
        return const ApiException.serverException(message: 'Server Error');
    }
  }
}
