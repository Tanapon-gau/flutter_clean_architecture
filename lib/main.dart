import 'package:flutter/material.dart';

import 'core/services/navigation_service.dart';
import 'features/feature_a/presentation/views/feature_a_page.dart';
import 'features/feature_b/presentation/views/feature_b_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: NavigationService.navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (context) => FeatureAPage(),
        '/featureB': (context) => FeatureBPage(),
      },
    );
  }
}
