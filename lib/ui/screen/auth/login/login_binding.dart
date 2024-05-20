import 'package:developerfect_app/data/repo/user_repository_impl.dart';
import 'package:developerfect_app/domain/user_repository.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
    Get.lazyPut(() => LoginController(Get.find()));
  }
}
