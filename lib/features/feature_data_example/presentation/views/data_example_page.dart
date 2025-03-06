// lib/features/feature_data_example/presentation/views/data_example_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/feature_data_example/data/repositories/data_repository_impl.dart';
import 'package:flutter_clean_architecture/features/feature_data_example/domain/entities/data_entity.dart';
import 'package:flutter_clean_architecture/features/feature_data_example/domain/usecases/get_data_usecase.dart';

import '../../data/datasources/remote_data_source.dart';

class DataExamplePage extends StatefulWidget {
  @override
  _DataExamplePageState createState() => _DataExamplePageState();
}

class _DataExamplePageState extends State<DataExamplePage> {
  List<DataEntity> data = [];

  Future<void> fetchData() async {
    final repository = DataRepositoryImpl(RemoteDataSource());
    final useCase = GetDataUseCase(repository);
    final result = await useCase.execute();
    setState(() {
      data = result;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Example'),
      ),
      body: data.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.description),
                );
              },
            ),
    );
  }
}
