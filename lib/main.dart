import 'package:developerfect_app/main_binding.dart';
import 'package:developerfect_app/route/route_name.dart';
import 'package:developerfect_app/route/routes.dart';
import 'package:developerfect_app/utils/loading_utils.dart';
import 'package:developerfect_app/utils/pref_utils.dart';
import 'package:developerfect_app/utils/style/style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> main() async {
  await MainBinding().dependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await PrefsUtils.init();
  setPathUrlStrategy();
  LoadingUtils.config();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appLightTheme,
        darkTheme: appLightTheme,
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        builder: (context, child) {
          var widget = EasyLoading.init()(context, child);
          return ResponsiveBreakpoints.builder(
            child: widget,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
            ],
          );
        },
        //region routes configs
        getPages: routes,
        initialRoute: RouteName.splash,
        initialBinding: MainBinding(),
        //region theme configs
      ),
    );
  }
}
