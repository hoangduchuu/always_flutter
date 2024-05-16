// ignore_for_file: deprecated_member_use

library dio_logger;

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'my_logger.dart';

const enableLog = kDebugMode;

InterceptorsWrapper dioLoggerInterceptor({String? tag}) {
  return InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
    if (enableLog) {
      MyLogger.printDebug('┌------------------------Start - $tag---------------------------------------------');
      MyLogger.printDebug('| [DIO] Request: ${options.method} ${options.uri}');
      MyLogger.printDebug('| ${options.data.toString()}');
      MyLogger.printDebug('| Headers:');
      options.headers.forEach((key, value) {
        MyLogger.printDebug(('|\t$key: $value'));
      });
      MyLogger.printDebug('├------------------------End onRequest - $tag---------------------------------------\n\n');
    }

    handler.next(options); //continue
  }, onResponse: (Response response, handler) async {
    if (enableLog) {
      MyLogger.printDebug(
          '| [DIO] Response [code ${response.statusCode}] ✅✅👉 at ${response.requestOptions.path}: ${response.data.toString()}');
      MyLogger.printDebug(
          '└------------------------End onResponse - $tag-----------------------------------------------------\n\n');
    } else {
      // logFirebaseSuccess(response);
    }
    handler.next(response);
    // return response; // continue
  }, onError: (DioError error, handler) async {
    if (enableLog) {
      MyLogger.printDebug(
          '| [DIO] Error: ⛔️⛔⛔️⛔️👉 at ${error.requestOptions.path} ${error.error}: ${error.response.toString()}');
      MyLogger.printDebug('└-------------------------End onError - $tag------------------------------------------\n\n');
    }
    handler.next(error); //continue
  });
}
