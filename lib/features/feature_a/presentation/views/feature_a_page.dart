import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/services/navigation_service.dart';

class FeatureAPage extends StatelessWidget {
  const FeatureAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feature A'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            NavigationService().navigateTo('/featureB');
          },
          child: Text('Go to Feature B'),
        ),
      ),
    );
  }
}
