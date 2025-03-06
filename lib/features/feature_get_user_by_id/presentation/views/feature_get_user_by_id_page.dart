import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/feature_get_user_by_id/data/repositories/user_repository_impl.dart';
import 'package:flutter_clean_architecture/features/feature_get_user_by_id/domain/entities/user_entity.dart';
import 'package:flutter_clean_architecture/features/feature_get_user_by_id/domain/usecases/get_user_by_id_usecase.dart';

class FeatureGetUserByIdPage extends StatefulWidget {
  @override
  _FeatureGetUserByIdPageState createState() => _FeatureGetUserByIdPageState();
}

class _FeatureGetUserByIdPageState extends State<FeatureGetUserByIdPage> {
  UserEntity? user;

  Future<void> fetchUser() async {
    final repository = UserRepositoryImpl();
    final useCase = GetUserByIdUseCase(repository);
    final result = await useCase.execute('123');
    setState(() {
      user = result;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get User By ID'),
      ),
      body: Center(
        child: user == null
            ? CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('User ID: ${user!.id}'),
                  Text('User Name: ${user!.name}'),
                  Text('User Email: ${user!.email}'),
                ],
              ),
      ),
    );
  }
}
