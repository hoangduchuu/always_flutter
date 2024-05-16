
import 'package:developerfect_app/data/api/network_client.dart';
import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/model/user_model.dart';
import 'package:get/get.dart';

class UserRepositoryImpl implements UserRepository {
  final _client = Get.find<HTTPProvider>();

  @override
  Future<List<UserModel>> getUsers() async {
    var rs = await _client.makeGet('/users');
    return List<UserModel>.from(rs.map((x) => UserModel.fromMap(x)));
  }
}
