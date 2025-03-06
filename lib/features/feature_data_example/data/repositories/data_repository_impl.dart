// lib/features/feature_data_example/data/repositories/data_repository_impl.dart
import '../../domain/entities/data_entity.dart';
import '../../domain/repositories/data_repository.dart';
import '../datasources/remote_data_source.dart';

class DataRepositoryImpl implements DataRepository {
  final RemoteDataSource remoteDataSource;

  DataRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<DataEntity>> fetchData() async {
    return await remoteDataSource.fetchData();
  }
}
