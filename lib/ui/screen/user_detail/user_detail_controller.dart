import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/utils/log/my_logger.dart';
import 'package:get/get.dart';

import 'user_detail_binding.dart';

class UserDetailController extends GetxController {
  UserDetailController(this._userRepository);

  final UserRepository _userRepository;
  final UserDetailBinding binding = UserDetailBinding();

  // the userId
  String? userId;

  @override
  void onInit() {
    super.onInit();
    _getArguments();
  }

  void _getArguments() {
    userId = Get.parameters['userId'];
    getUser();
  }

  Future<void> getUser() async {
    _userRepository.getUser(userId: userId!).then((value) {
      binding.user.value = value;
    }).catchError((onError) {
      MyLogger.d("getUser error: $onError");
    });
  }
}
