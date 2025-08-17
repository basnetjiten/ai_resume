/*
 * Copyright (c) 2024.
 * Author: Jiten Basnet
 *
 */

import 'dart:async';
import 'package:ai_resume/src/bootstrap.dart';
import 'package:ai_resume/src/core/envs/production_env.dart';
import 'package:ai_resume/src/core/services/logging/app_logger.dart';
import 'src/core/base/env.dart';

/// Bootstraps project with early initialization
/// with [ProductionEnv()] Environment configurations
void main() => runZonedGuarded(() => bootstrap(initEnv: () => Env.instance.initEnv(ProductionEnv())), (
    Object error,
    StackTrace stackTrace,
    ) {
  //FirebaseLogService.logCrashes(error, stackTrace);
  AppLogger.logAppError(error, stackTrace);
});
