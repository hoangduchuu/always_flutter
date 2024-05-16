import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'user_detail_controller.dart';

class UserDetailScreen extends GetWidget<UserDetailController> {
  const UserDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.find<UserDetailController>();
    final b = Get.find<UserDetailController>().binding;

    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            title: const Text('User Detail'),
          ),
          body: Container(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: b.user.value == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name: ${c.binding.user.value?.name}',
                              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Text('Username: ${c.binding.user.value?.username}'),
                          const SizedBox(height: 8),
                          Text('Email: ${c.binding.user.value?.email}'),
                          const SizedBox(height: 8),
                          Text('Phone: ${c.binding.user.value?.phone}'),
                          const SizedBox(height: 8),
                          Text('Website: ${c.binding.user.value?.website}'),
                          const SizedBox(height: 8),
                          const Text('Address:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                              '${c.binding.user.value?.address.street}, ${c.binding.user.value?.address.suite}, ${c.binding.user.value?.address.city}, ${c.binding.user.value?.address.zipcode}'),
                          const SizedBox(height: 8),
                          const Text('Company:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('${c.binding.user.value?.company.name}'),
                          Text('${c.binding.user.value?.company.catchPhrase}'),
                          Text('${c.binding.user.value?.company.bs}'),
                        ],
                      ),
                    ),
            ),
          ));
    });
  }
}
