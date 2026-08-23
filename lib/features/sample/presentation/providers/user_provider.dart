import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import '../../../core/network/dio_client.dart';
import '../data/repositories/user_repository_impl.dart';
import '../domain/repositories/user_repository.dart';

part 'user_provider.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return DioClient(Dio()).dio;
}

@riverpod
UserRepository userRepository(UserRepositoryRef ref) {
  final dioClient = ref.watch(dioProvider);
  return UserRepositoryImpl(dioClient);
}

@riverpod
Future<List<UserModel>> users(UsersRef ref) async {
  final repository = ref.watch(userRepositoryProvider);
  return repository.getAllUsers();
}
