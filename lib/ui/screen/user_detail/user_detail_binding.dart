import 'package:developerfect_app/data/repo/user_repository_impl.dart';
import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/model/user_model.dart';
import 'package:get/get.dart';

import 'user_detail_controller.dart';

class UserDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
    Get.lazyPut(() => UserDetailController(Get.find()));
  }

  Rxn<UserModel> user = Rxn(null);
  RxString errorMsg = ''.obs;
}
