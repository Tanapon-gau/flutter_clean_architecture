// lib/features/feature_a/domain/repositories/user_repository.dart
import '../entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> getUserById(String userId);
}
