import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:get/get.dart';

import 'home_page_binding.dart';

class HomePageController extends GetxController {
  HomePageController(this._userRepository);

  final HomePageBinding binding = HomePageBinding();
  final UserRepository _userRepository;

  @override
  void onInit() {
    super.onInit();
    getUsers();
  }

  void getUsers() {
    _userRepository.getUsers().then((value) {
      binding.users.value = value;
      MyLogger.d('${value.length}');
    }).catchError((onError) {
      MyLogger.d("getUsers error: $onError");
    });
  }
}
