import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:developerfect_app/utils/pref_utils.dart';
import 'package:get/get.dart';

import 'login_binding.dart';

class LoginController extends GetxController {
  LoginController(this._userRepository);

  UserRepository _userRepository;

  final LoginBinding binding = LoginBinding();

  void login() {
    _userRepository.login(email: 'email', password: 'password').then((dummyUser) {
      MyLogger.d('login success ${dummyUser.toString()}');
      appPrefs.userToken = '${dummyUser.token}';
    });
  }
}
