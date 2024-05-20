import 'package:developerfect_app/utils/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsUtils {
  static final _instance = Get.find<SharedPreferences>();

  //region init
  static Future<dynamic> init() async {
    await Get.putAsync<SharedPreferences>(() => SharedPreferences.getInstance(), permanent: true);
  }

  //endregion init

  //region user token

  String get userToken => _instance.getString(PrefKeys.userToken) ?? '';

  set userToken(String token) {
    _instance.setString(PrefKeys.userToken, token);
  }

//endregion user token
}

PrefsUtils appPrefs = PrefsUtils();
