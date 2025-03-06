// lib/features/feature_data_example/domain/repositories/data_repository.dart
import '../entities/data_entity.dart';

abstract class DataRepository {
  Future<List<DataEntity>> fetchData();
}
