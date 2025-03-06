// lib/features/feature_a/data/repositories/user_repository_impl.dart
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserEntity> getUserById(String userId) async {
    // จำลองการเรียก API หรือดึงข้อมูลจากฐานข้อมูล
    await Future.delayed(Duration(seconds: 1)); // จำลองการ delay
    return UserEntity(
      id: userId,
      name: 'John Doe',
      email: 'john.doe@example.com',
    );
  }
}
