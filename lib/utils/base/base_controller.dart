import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/route/navigators.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:developerfect_app/utils/pref_utils.dart';
import 'package:get/get.dart';

abstract class BaseController extends GetxController {
  final _userRepository = Get.find<UserRepository>();

  @override
  void onReady() {
    super.onReady();
    _checkLogin();
  }



  Future<void> _checkLogin() async {
    if (appPrefs.
    userToken != '') {
      try {
        var user = await _userRepository.getDumMe();
      } catch (e) {
        AppNavigators.gotoLogin();
      }
    } else {
      AppNavigators.gotoLogin();
    }
  }
}
