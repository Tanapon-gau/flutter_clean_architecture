// lib/features/feature_a/domain/usecases/get_user_by_id_usecase.dart
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

class GetUserByIdUseCase {
  final UserRepository repository;

  GetUserByIdUseCase(this.repository);

  Future<UserEntity> execute(String userId) async {
    return await repository.getUserById(userId);
  }
}
