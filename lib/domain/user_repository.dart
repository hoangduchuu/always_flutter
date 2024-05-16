import 'package:developerfect_app/model/user_model.dart';

abstract class UserRepository {
  Future<List<UserModel>> getUsers();

  Future<UserModel> getUser({required String userId});
}
