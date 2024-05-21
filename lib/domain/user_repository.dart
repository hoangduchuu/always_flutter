import 'package:developerfect_app/model/dummy_user_model.dart';
import 'package:developerfect_app/model/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getUsers();

  Future<UserModel> getUser({required String userId});

  Future<DummyUserModel> login({required String email, required String password});

  Future<DummyUserModel> getDumMe();
}
