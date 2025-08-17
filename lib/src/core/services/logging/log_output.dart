/*
* @Author:Jiten Basnet
*/

import 'dart:developer';
import 'package:ai_resume/src/core/extensions/date_time_extension.dart';
import 'package:logger/logger.dart';

class AppLogOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    log('${event.origin.time.timeOnly}${PrettyPrinter.defaultLevelEmojis[event.level]}${event.origin.message}');
  }
}
