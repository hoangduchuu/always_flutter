import 'package:get/get.dart';
import 'package:xemxongxoa/route/route_name.dart';

class AppNavigators {
  static Future<dynamic>? gotoHome() {
    return Get.toNamed(RouteName.home);
  }
}
