import 'package:developerfect_app/data/api/dummy_network_client.dart';
import 'package:developerfect_app/data/api/network_client.dart';
import 'package:developerfect_app/domain/user_repository.dart';
import 'package:developerfect_app/model/dummy_user_model.dart';
import 'package:developerfect_app/model/user_model.dart';
import 'package:get/get.dart';

class UserRepositoryImpl implements UserRepository {
  final _client = Get.find<HTTPProvider>();
  final _dummyclient = Get.find<DummyHTTPProvider>(tag: 'dummy');

  @override
  Future<List<UserModel>> getUsers() async {
    var rs = await _client.makeGet('/users');
    return List<UserModel>.from(rs.map((x) => UserModel.fromMap(x)));
  }

  @override
  Future<UserModel> getUser({required String userId}) async {
    var rs = await _client.makeGet('/users/$userId');
    return UserModel.fromMap(rs);
  }

  @override
  Future<DummyUserModel> login({required String email, required String password}) async {
    var body = {"username": "kminchelle", "password": "0lelplR", "expiresInMins": 30};
    var data = await _dummyclient.makePost('/auth/login', data: body);
    return DummyUserModel.fromJson(data);
  }

  @override
  Future<DummyUserModel> getDumMe() async {
    var data = await _dummyclient.makeGet('/auth/me');
    return DummyUserModel.fromJson(data);
  }
}
