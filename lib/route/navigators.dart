import 'package:developerfect_app/route/route_name.dart';
import 'package:get/get.dart';

class AppNavigators {
  static Future<dynamic>? gotoHome() {
    return Get.offAllNamed(RouteName.home);
  }

  static Future<dynamic>? gotoUserDetail({required String userId}) {
    return Get.toNamed('${RouteName.user}/$userId');
  }

  static Future<dynamic>? gotoQuiz() {
    return Get.toNamed(RouteName.quiz);
  }

  static Future<dynamic>? gotoLogin() {
    return Get.toNamed(RouteName.login);
  }
}
