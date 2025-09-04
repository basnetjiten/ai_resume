/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */
import 'package:ai_resume/src/core/base/env.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';
import '../network/auth_interceptor.dart';

@module
abstract class RegisterModules {
  @singleton
  @preResolve
  Future<LocalStorage> get storage async => LocalStorage.getInstance();

  @lazySingleton
  Dio dio(AuthInterceptor authInterceptor) => Dio(
    BaseOptions(
      headers: <String, dynamic>{"Accept": "application/json'", "Content-Type": "application/json"},
      baseUrl: Env.instance.baseUrl,
      receiveTimeout: const Duration(seconds: 120),
      connectTimeout: const Duration(seconds: 120),
      responseType: ResponseType.json,
    ),
  )..interceptors.addAll(<Interceptor>[authInterceptor, if (kDebugMode) LogInterceptor(requestBody: true)]);
}
