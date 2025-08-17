import 'dart:core';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get timeOnly {
    final DateFormat formatter = DateFormat.Hms(); // Format: HH:mm:ss
    return formatter.format(this);
  }
}
