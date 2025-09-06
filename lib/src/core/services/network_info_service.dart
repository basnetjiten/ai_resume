/*
* @Author:Jiten Basnet
*/

import 'dart:async';

import 'package:ai_resume/src/core/base/env.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class InternetConnectionHelper {
  InternetConnectionHelper();

  static Future<bool> checkConnection() async {
    final String baseURL = Env.instance.baseUrl.replaceAll(RegExp(r'/api/v1/?$'), '/');
    return InternetConnection.createInstance(
      customCheckOptions: <InternetCheckOption>[InternetCheckOption(uri: Uri.parse(baseURL))],
    ).hasInternetAccess;
  }
}
