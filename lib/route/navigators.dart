import 'package:developerfect_app/route/route_name.dart';
import 'package:get/get.dart';

class AppNavigators {
  static Future<dynamic>? gotoHome() {
    return Get.toNamed(RouteName.home);
  }
}
