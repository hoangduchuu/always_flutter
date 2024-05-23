import 'package:get/get.dart';

import 'tgdd_home_controller.dart';

class TGDDHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TGDDHomeController());
  }
}
