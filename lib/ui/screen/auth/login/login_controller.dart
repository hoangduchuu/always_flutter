import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/utils/loading_utils.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:developerfect_app/utils/pref_utils.dart';
import 'package:get/get.dart';

import 'login_binding.dart';

class LoginController extends GetxController {
  LoginController(this._userRepository);

  UserRepository _userRepository;

  final LoginBinding binding = LoginBinding();

  void login() {
    LoadingUtils.showProgress();
    _userRepository.login(email: 'email', password: 'password').then((dummyUser) {
      MyLogger.d('login success ${dummyUser.toString()}');
      appPrefs.userToken = '${dummyUser.token}';
      getUserAndNavigateHome();
    });
  }

  void getUserAndNavigateHome() {
    _userRepository.getDumMe().then((dummyUser) {
      MyLogger.d('getMe success ${dummyUser.toString()}');
      LoadingUtils.showSuccessMessage('${dummyUser.toJson()}');
      AppNavigators.gotoHome();
      LoadingUtils.dismiss();
    });
  }
}
