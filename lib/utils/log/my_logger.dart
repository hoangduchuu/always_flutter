import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

var _logger = Logger(
    printer: PrettyPrinter(

        // width of the output
        colors: true,
        // Colorful log messages
        printEmojis: true,

        // Print an emoji for each log message
        printTime: false),
    level: Level.debug);

class MyLogger {
  static void d(Object? s, {String tag = ''}) {
    if (kDebugMode) {
      _logger.d('$tag - ${s.toString()}');
    }
  }

  static void e(Object? s, {String tag = ''}) {
    if (kDebugMode) {
      _logger.e('$tag - ${s.toString()}');
    }
  }

  static void printDebug(String s, {String tag = ''}) {
    if (kDebugMode) {
      print(s);
    }
  }
}
