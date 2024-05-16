import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_detail_controller.dart';

class UserDetailScreen extends StatelessWidget {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UserDetailController>();
    final binding = Get.find<UserDetailController>().binding;

    return Container();
  }
}
