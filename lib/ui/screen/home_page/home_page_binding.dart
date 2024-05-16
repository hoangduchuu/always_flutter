import 'package:developerfect_app/data/repo/user_repository_impl.dart';
import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/model/user_model.dart';
import 'package:get/get.dart';

import 'home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
    Get.lazyPut(() => HomePageController(Get.find()));
  }

  RxList<UserModel> users = RxList([]);
}
