import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/utils/loading_utils.dart';
import 'package:get/get.dart';

import 'splash_binding.dart';

class SplashController extends GetxController {
  final SplashBinding binding = SplashBinding();

  @override
  void onReady() {
    super.onReady();
    LoadingUtils.showProgress();
    Future.delayed(const Duration(seconds: 2), () {
      LoadingUtils.dismiss();
      AppNavigators.gotoHome();
    });
  }
}
