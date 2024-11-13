import 'package:flutter/material.dart';
import 'package:space_app/UI/details/planet_details.dart';
import 'package:space_app/UI/home/home.dart';
import 'package:space_app/UI/login/login.dart';
import 'package:space_app/core/constants/routes.dart';
import 'package:space_app/core/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.loginRoute: (_) => const Login(),
        Routes.homeRoute: (_) => const Home(),
        Routes.detailsRoute: (_) =>  PlanetDetails()
      },
      initialRoute: Routes.loginRoute,
    );
  }
}
