import 'package:developerfect_app/main_binding.dart';
import 'package:developerfect_app/route/route_name.dart';
import 'package:developerfect_app/ui/screen/home_page/home_page_binding.dart';
import 'package:developerfect_app/ui/screen/home_page/home_page_screen.dart';
import 'package:developerfect_app/ui/screen/splash/splash_binding.dart';
import 'package:developerfect_app/ui/screen/splash/splash_screen.dart';
import 'package:developerfect_app/ui/screen/user_detail/user_detail_binding.dart';
import 'package:developerfect_app/ui/screen/user_detail/user_detail_screen.dart';
import 'package:get/get.dart';

final routes = [
  GetPage(
    name: RouteName.splash,
    page: () => const SplashScreen(),
    bindings: [
      MainBinding(),
      SplashBinding(),
    ],
  ),
  GetPage(
    name: RouteName.home,
    page: () => const HomePageScreen(),
    bindings: [
      MainBinding(),
      HomePageBinding(),
    ],
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: RouteName.user,
    page: () => const UserDetailScreen(),
    bindings: [
      MainBinding(),
      UserDetailBinding(),
    ],
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: RouteName.userUserId,
    page: () => const UserDetailScreen(),
    bindings: [
      MainBinding(),
      UserDetailBinding(),
    ],
    transition: Transition.fadeIn,
  ),
];
