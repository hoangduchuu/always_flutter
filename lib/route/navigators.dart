import 'package:developerfect_app/route/route_name.dart';
import 'package:get/get.dart';

class AppNavigators {
  static Future<dynamic>? gotoUnknow() {
    return Get.toNamed(RouteName.unknown);
  }

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

  static Future<dynamic>? gotoProfile() {
    return Get.toNamed(RouteName.profile);
  }

  static Future<dynamic>? gotoTGDDHome() {
    return Get.toNamed(RouteName.tgddHome);
  }
}
