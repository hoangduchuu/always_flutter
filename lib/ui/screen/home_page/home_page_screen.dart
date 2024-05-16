import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomePageController>();
    final binding = Get.find<HomePageController>().binding;

    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
