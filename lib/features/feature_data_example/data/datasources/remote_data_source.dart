// lib/features/feature_data_example/data/datasources/remote_data_source.dart
import '../../domain/entities/data_entity.dart';

class RemoteDataSource {
  Future<List<DataEntity>> fetchData() async {
    // จำลองการเรียก API
    await Future.delayed(Duration(seconds: 2)); // จำลองการ delay
    return [
      DataEntity(id: 1, title: 'Title 1', description: 'Description 1'),
      DataEntity(id: 2, title: 'Title 2', description: 'Description 2'),
    ];
  }
}
