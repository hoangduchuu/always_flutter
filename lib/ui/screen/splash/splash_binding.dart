import 'package:developerfect_app/data/repo/user_repository_impl.dart';
import 'package:developerfect_app/domain/user_repository.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
    Get.lazyPut(() => SplashController(Get.find()));
  }
}
