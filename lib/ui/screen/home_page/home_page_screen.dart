import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/ui/item/user_item.dart';
import 'package:developerfect_app/utils/style/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'home_page_controller.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<HomePageController>();
    final b = Get.find<HomePageController>().binding;

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        endDrawer: ResponsiveBreakpoints.of(context).isDesktop || 1 == 1
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: flexSchemeLight.primary,
                      ),
                      child: const Text(
                        'Drawer Header',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('Item 1'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Item 2'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title:  Text('Change theme'),
                      onTap: () {
                        Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
                        Get.back();
                      },
                    ),
                  ],
                ),
              )
            : null,
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
