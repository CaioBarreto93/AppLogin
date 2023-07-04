import 'package:flutter/material.dart';
import 'package:login/routes/routes_generator.dart';
import 'package:login/shared/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: RoutesGenerator.loginPage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}
