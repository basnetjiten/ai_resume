/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'package:ai_resume/src/core/extensions/api_extension.dart';
import 'package:ai_resume/src/core/services/logging/app_logger.dart';
import 'package:dio/dio.dart';
import 'package:simple_form_field/errors/api_exception.dart';

/// [BaseRemoteSource] for handling network requests for dio client
abstract class BaseRemoteSource {
  BaseRemoteSource(this._dio);

  final Dio _dio;

  /// [T] is return type from network request
  ///
  /// [request] callback returns [Response] and accepts [Dio] instance
  ///
  /// [onResponse] callback returns [T] and accepts [dynamic] data from [Response]
  ///
  /// throws [ApiException]

  Future<T> networkRequest<T>({
    required Future<Response> Function(Dio dio) request,
    required T Function(dynamic data) onResponse,
  }) async {
    try {
      final Response<dynamic> response = await request(_dio);
      if (response.statusCode! == 200) {
        return onResponse(response.data ?? <String, dynamic>{});
      } else {
        throw ApiException.serverException(
          message: response.data['message'] ?? 'UnExpected Error Occurred!',
        );
      }
    } on DioException catch (e) {
      throw e.toException;
    } catch (e) {
      AppLogger.logInfo(info: e.toString());
      throw const ApiException.serverException(message: 'Parsing Error!');
    }
  }
}
