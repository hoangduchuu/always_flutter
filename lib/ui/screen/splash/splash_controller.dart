import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/utils/loading_utils.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:developerfect_app/utils/pref_utils.dart';
import 'package:get/get.dart';

import 'splash_binding.dart';

class SplashController extends GetxController {
  UserRepository _userRepository;

  final SplashBinding binding = SplashBinding();

  @override
  onInit() async {
    super.onInit();
    LoadingUtils.showProgress();
    Future.delayed(const Duration(seconds: 1), () {
      LoadingUtils.dismiss();
      _checkLogin();
    });
  }

  Future<void> _checkLogin() async {
    MyLogger.d("check LOGIN");
    if (appPrefs.userToken != '') {
      try {
        MyLogger.d("check LOGIN getDumMe");
        var user = await _userRepository.getDumMe();
        AppNavigators.gotoHome();
      } catch (e) {
        MyLogger.d("check LOGIN Catch 1");
        AppNavigators.gotoLogin();
      }
    } else {
      MyLogger.d("check LOGIN else case");
      AppNavigators.gotoLogin();
    }
  }

  SplashController(this._userRepository);
}
