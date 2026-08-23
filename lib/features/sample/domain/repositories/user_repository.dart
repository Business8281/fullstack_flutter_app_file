import '../entities/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getUser(String id);
  Future<List<UserModel>> getAllUsers();
}
