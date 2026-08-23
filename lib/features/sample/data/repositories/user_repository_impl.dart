import 'package:dio/dio.dart';
import '../../domain/entities/user_model.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final Dio dio;

  UserRepositoryImpl(this.dio);

  @override
  Future<UserModel> getUser(String id) async {
    // In a real app, this would be an API call
    // final response = await dio.get('/users/$id');
    // return UserModel.fromJson(response.data);
    return UserModel(id: id, name: 'John Doe', email: 'john@example.com');
  }

  @override
  Future<List<UserModel>> getAllUsers() async {
    return [
      const UserModel(id: '1', name: 'John Doe', email: 'john@example.com'),
      const UserModel(id: '2', name: 'Jane Doe', email: 'jane@example.com'),
    ];
  }
}
