import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'tgdd_home_controller.dart';

class TGDDHomeScreen extends StatelessWidget {
  const TGDDHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TGDDHomeController>();
    final binding = Get.find<TGDDHomeController>().binding;

    return Scaffold(
      appBar: AppBar(
        title: Text('TGDD Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TGDD Home Screen',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
