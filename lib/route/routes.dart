import 'package:developerfect_app/main_binding.dart';
import 'package:developerfect_app/route/route_name.dart';
import 'package:developerfect_app/ui/screen/auth/login/login_binding.dart';
import 'package:developerfect_app/ui/screen/auth/login/login_screen.dart';
import 'package:developerfect_app/ui/screen/home_page/home_page_binding.dart';
import 'package:developerfect_app/ui/screen/home_page/home_page_screen.dart';
import 'package:developerfect_app/ui/screen/kiemtra/quiz/quiz_binding.dart';
import 'package:developerfect_app/ui/screen/kiemtra/quiz/quiz_controller.dart';
import 'package:developerfect_app/ui/screen/kiemtra/quiz/quiz_screen.dart';
import 'package:developerfect_app/ui/screen/profile/profile_binding.dart';
import 'package:developerfect_app/ui/screen/profile/profile_screen.dart';
import 'package:developerfect_app/ui/screen/splash/splash_binding.dart';
import 'package:developerfect_app/ui/screen/splash/splash_screen.dart';
import 'package:developerfect_app/ui/screen/tgdd/t_g_d_d_home/tgdd_home_screen.dart';
import 'package:developerfect_app/ui/screen/tgdd/t_g_d_d_home/tggd_home_binding.dart';
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
  GetPage(
    name: RouteName.quiz,
    page: () => QuizScreen(),
    bindings: [
      MainBinding(),
      QuizBinding(),
    ],
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: RouteName.login,
    page: () => const LoginScreen(),
    bindings: [
      MainBinding(),
      LoginBinding(),
    ],
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: RouteName.profile,
    page: () => const ProfileScreen(),
    bindings: [
      MainBinding(),
      ProfileBinding(),
    ],
    transition: Transition.fadeIn,
  ),
  GetPage(
    name: RouteName.tgddHome,
    page: () => const TGDDHomeScreen(),
    bindings: [
      MainBinding(),
      TGDDHomeBinding(),
    ],
    transition: Transition.fadeIn,
  ),
];
