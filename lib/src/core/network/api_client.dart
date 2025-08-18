import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  final Dio _dio = Dio()
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  // Add other HTTP methods (put, delete, etc.) as needed

  Exception _handleError(DioException error) {
    if (error.response != null) {
      // Handle different status codes
      switch (error.response?.statusCode) {
        case 400:
          return Exception('Bad Request');
        case 401:
          return Exception('Unauthorized');
        case 403:
          return Exception('Forbidden');
        case 404:
          return Exception('Not Found');
        case 500:
          return Exception('Internal Server Error');
        default:
          return Exception('Something went wrong');
      }
    } else {
      return Exception('No internet connection');
    }
  }
}
