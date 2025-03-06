import 'package:flutter/material.dart';

import 'core/services/navigation_service.dart';
import 'features/feature_a/presentation/views/feature_a_page.dart';
import 'features/feature_b/presentation/views/feature_b_page.dart';
import 'features/feature_data_example/presentation/views/data_example_page.dart';
import 'features/feature_get_user_by_id/presentation/views/feature_get_user_by_id_page.dart';

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
        '/': (context) => HomePage(),
        '/featureA': (context) => FeatureAPage(),
        '/featureB': (context) => FeatureBPage(),
        '/featureGetUserById': (context) => FeatureGetUserByIdPage(),
        '/dataExample': (context) => DataExamplePage(), // เพิ่ม route นี้
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // ไปยัง Feature A (Navigation)
                NavigationService().navigateTo('/featureA');
              },
              child: Text('Go to Feature A (Navigation)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ไปยัง Feature Get User By ID (Use Case)
                NavigationService().navigateTo('/featureGetUserById');
              },
              child: Text('Go to Feature Get User By ID (Use Case)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // ไปยัง Data Example (Data Feature)
                NavigationService().navigateTo('/dataExample');
              },
              child: Text('Go to Data Example (Data Feature)'),
            ),
          ],
        ),
      ),
    );
  }
}
