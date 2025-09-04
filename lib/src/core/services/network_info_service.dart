/*
* @Author:Jiten Basnet
*/

import 'dart:async';

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class InternetConnectionHelper {
  InternetConnectionHelper();

  static Future<bool> checkConnection() async {
    final String baseURL = 'https://journey-ai-webservice.onrender.com';
    return InternetConnection.createInstance(
      customCheckOptions: <InternetCheckOption>[InternetCheckOption(uri: Uri.parse(baseURL))],
    ).hasInternetAccess;
  }
}
