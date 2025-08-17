import 'package:ai_resume/src/core/services/logging/log_output.dart';
import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    output: AppLogOutput(),
    printer: PrettyPrinter(
      colors: true,
      printEmojis: true,
      dateTimeFormat: DateTimeFormat.dateAndTime, // Should each log print contain a timestamp
    ),
  );

  static void logAppError(dynamic error, StackTrace stackTrace) =>
      _logger.log(Level.fatal, 'APP_ERROR:: $error StackTrace::$stackTrace');

  static void logError({required dynamic error}) => _logger.e(error);

  static void logInfo({required dynamic info}) => _logger.i(info);

  static void logDebug({required dynamic info}) => _logger.d(info);

  static void logFatal({required dynamic info}) => _logger.f(info);
}
