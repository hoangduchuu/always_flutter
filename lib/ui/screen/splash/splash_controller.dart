import 'package:get/get.dart';
import 'package:xemxongxoa/route/navigators.dart';

import 'splash_binding.dart';

class SplashController extends GetxController {
  final SplashBinding binding = SplashBinding();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 4), () {
      AppNavigators.gotoHome();
    });
  }
}
