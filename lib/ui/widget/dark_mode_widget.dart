import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModeWidget extends StatefulWidget {
  const DarkModeWidget({super.key});

  @override
  State<DarkModeWidget> createState() => _DarkModeWidgetState();
}

class _DarkModeWidgetState extends State<DarkModeWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
      },
      icon: Icon(
        !Get.isDarkMode ? Icons.light_mode : Icons.mode_night,
      ),
    );
  }
}
