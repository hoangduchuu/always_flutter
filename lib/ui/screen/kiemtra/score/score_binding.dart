import 'package:get/get.dart';

import 'score_controller.dart';

class ScoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ScoreController());
  }
}
