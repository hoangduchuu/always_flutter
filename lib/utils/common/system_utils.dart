import 'package:flutter/material.dart';
import 'package:get/get.dart';

var appLocale = 'en';

class SystemUtils {
  static changeTheme() {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }

  static void changeLanguage() {
    Locale vietnam = const Locale('vi', 'VN');
    Locale english = const Locale('en', 'US');
    if (Get.locale?.languageCode == 'vi') {
      appLocale = 'en';
      Get.updateLocale(english);
      Get.forceAppUpdate();
    } else {
      appLocale = 'vi';
      Get.updateLocale(vietnam);
      Get.forceAppUpdate();
    }
  }
}
