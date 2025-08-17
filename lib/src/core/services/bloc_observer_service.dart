/*
* @Author:Jiten Basnet
*/

import 'package:ai_resume/src/core/services/logging/app_logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocObserverService extends BlocObserver {
  @override
  Future<void> onChange(BlocBase<dynamic> bloc, Change<dynamic> change) async {
    super.onChange(bloc, change);
    AppLogger.logInfo(info: 'onBlocChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    AppLogger.logInfo(
      info: 'onBlocError(${bloc.runtimeType}, $error, $stackTrace)',
    );
    super.onError(bloc, error, stackTrace);
  }
}
