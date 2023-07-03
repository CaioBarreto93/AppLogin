import 'package:flutter/material.dart';
import 'package:login/routes/routes_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesGenerator.loginPage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}
