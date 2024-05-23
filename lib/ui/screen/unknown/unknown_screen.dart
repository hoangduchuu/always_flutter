import 'package:developerfect_app/generated/assets.dart';
import 'package:developerfect_app/route/navigators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'unknown_controller.dart';

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UnknownController>();
    final binding = Get.find<UnknownController>().binding;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Gap(100.h),
              Lottie.asset(Assets.lotties404,width: 200.w,height: 200.h),
              Gap(24.h),
          
              ElevatedButton(
                onPressed: () {
                  AppNavigators.gotoHome();
                },
                child: Text('Go to Home'),
              ),
            ],
          ),
        ),
      )
    );
  }
}
