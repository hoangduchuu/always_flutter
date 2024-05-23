import 'package:developerfect_app/utils/common/system_utils.dart';
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
        SystemUtils.changeTheme();
      },
      icon: Icon(
        !Get.isDarkMode ? Icons.light_mode : Icons.mode_night,
      ),
    );
  }
}
