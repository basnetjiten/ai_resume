/*
 * Copyright (c) 2025.
 * Author: Jiten Basnet
 */

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_local_storage/hive_local_storage.dart';
import 'package:injectable/injectable.dart';
import '../network/auth_interceptor.dart';

@module
abstract class RegisterModules {


  @singleton
  @preResolve
  Future<LocalStorage> get storage async => await LocalStorage.getInstance();

  @lazySingleton
  Dio dio(AuthInterceptor authInterceptor) => Dio(
      BaseOptions(
        headers: {
          "Accept": 'application/json',
          "Content-Type": "application/json",
        },
        baseUrl:'http://192.168.1.100:3000/api/v1',
        receiveTimeout: const Duration(seconds: 120),
        connectTimeout: const Duration(seconds: 120),
        responseType: ResponseType.json,
      ),
    )
    ..interceptors.addAll([
      authInterceptor,
      if (kDebugMode) LogInterceptor(requestBody: true),
    ]);
}
