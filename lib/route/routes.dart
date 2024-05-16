import 'package:get/get.dart';
import 'package:xemxongxoa/main_binding.dart';
import 'package:xemxongxoa/route/route_name.dart';
import 'package:xemxongxoa/ui/screen/home/home_screen.dart';
import 'package:xemxongxoa/ui/screen/home_page/home_page_binding.dart';
import 'package:xemxongxoa/ui/screen/home_page/home_page_screen.dart';
import 'package:xemxongxoa/ui/screen/splash/splash_binding.dart';
import 'package:xemxongxoa/ui/screen/splash/splash_screen.dart';

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
];
