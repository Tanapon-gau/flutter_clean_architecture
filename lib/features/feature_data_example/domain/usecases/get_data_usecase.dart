// lib/features/feature_data_example/domain/usecases/get_data_usecase.dart
import '../entities/data_entity.dart';
import '../repositories/data_repository.dart';

class GetDataUseCase {
  final DataRepository repository;

  GetDataUseCase(this.repository);

  Future<List<DataEntity>> execute() async {
    return await repository.fetchData();
  }
}
