import 'package:flutter/material.dart';
import 'package:space_app/Ui/details_screen/details_screen.dart';
import 'package:space_app/Ui/home_screen/home_screen.dart';
import 'package:space_app/Ui/landing_screen/landing.dart';
import 'package:space_app/core/theme/app_theme.dart';

import 'core/constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.landingRoute,
      routes: {
        Routes.homeRoute: (context) => const HomeScreen(),
        Routes.detailsRoute: (context) => DetailsScreen(),
        Routes.landingRoute: (context) => const LandingScreen(),
      },
    );
  }
}
