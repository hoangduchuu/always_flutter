import 'package:developerfect_app/utils/common/system_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<LoginController>();
    final binding = Get.find<LoginController>().binding;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Screen'),
            ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child:  Text('K_1_Hello'.tr),
            ),
            ElevatedButton(
              onPressed: () {
                controller.getUserAndNavigateHome();
              },
              child: const Text('getMe'),
            ),
          ],
        ),
      )
    );
  }
}
