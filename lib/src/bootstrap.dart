/*
 * Copyright (c) 2024.
 * Author: Jiten Basnet
 *
 */

import 'dart:async';
import 'package:ai_resume/src/app/presentation/pages/app.dart';
import 'package:ai_resume/src/core/di/injector.dart';
import 'package:ai_resume/src/core/services/bloc_observer_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> bootstrap({required Function() initEnv}) async {
  final WidgetsBinding binding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: binding);

  await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  //Initialize Envs
  initEnv();

  // Bloc state observer
  if (kDebugMode) {
    Bloc.observer = BlocObserverService();
  }

  await configureInjection();

  // Runs error on own error zone
  runApp(App());
}
