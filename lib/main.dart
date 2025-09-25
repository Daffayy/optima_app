import 'package:flutter/material.dart' hide Router;
import 'package:test_godigi_apps/core/navigation/router.dart';
import 'package:test_godigi_apps/core/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Optima App',
      routes: Router.generateRoute(),
      initialRoute: Routes.mainRoute,
    );
  }
}
