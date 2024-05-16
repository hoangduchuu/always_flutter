import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/ui/item/user_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<HomePageController>();
    final b = Get.find<HomePageController>().binding;

    return Obx(() {
      return Scaffold(
        appBar: AppBar(title: Text('Home Page'), actions: [
          IconButton(
            icon: Icon(Icons.quiz),
            onPressed: () {
              AppNavigators.gotoQuiz();
            },
          ),
        ]),
        body: ListView.builder(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(), // new
          itemCount: b.users.length,
          itemBuilder: (context, index) {
            return UserItem(user: b.users[index]);
          },
        ),
      );
    });
  }
}
