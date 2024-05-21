import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class LoadingUtils {
  static void showProgress({Object? msg}) {
    if (msg != null) {
      EasyLoading.show(status: msg.toString());
    } else {
      EasyLoading.show(maskType: EasyLoadingMaskType.black, indicator: const Text('Loading...'));
    }
  }

  static void dismiss() {
    EasyLoading.dismiss();
  }

  static void showSuccessMessage(String msg, {Duration? duration}) {
    Get.snackbar('Success', msg, snackPosition: SnackPosition.BOTTOM, duration: duration ?? const Duration(milliseconds: 2000));
    // EasyLoading.showSuccess(msg, duration: duration ?? const Duration(milliseconds: 2000));
  }

  static void config() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.wave
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 200
      ..radius = 10.0
      ..progressColor = Colors.green
      ..backgroundColor = Colors.transparent
      ..boxShadow = []
      ..indicatorColor = Colors.transparent
      ..textColor = Colors.red
      ..textStyle = const TextStyle(fontWeight: FontWeight.bold, color: Colors.green)
      ..maskColor = Colors.transparent
      ..userInteractions = true
      ..dismissOnTap = false;
  }
}
