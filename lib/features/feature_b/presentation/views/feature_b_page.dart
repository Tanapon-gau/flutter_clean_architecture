import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/services/navigation_service.dart';

class FeatureBPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature B'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationService().goBack();
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
