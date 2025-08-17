/*
 * Copyright (c) 2024.
 * Author: Jiten Basnet
 *
 */

import 'dart:async';
import 'package:ai_resume/src/bootstrap.dart';
import 'package:ai_resume/src/core/envs/stage_env.dart';
import 'package:ai_resume/src/core/services/logging/app_logger.dart';
import 'src/core/base/env.dart';

/// Bootstraps project with early initialization
/// with [StageEnv()] Environment configurations
void main() => runZonedGuarded(() => bootstrap(initEnv: () => Env.instance.initEnv(StageEnv())), (
    Object error,
    StackTrace stackTrace,
    ) {
  //FirebaseLogService.logCrashes(error, stackTrace);
  AppLogger.logAppError(error, stackTrace);
});
