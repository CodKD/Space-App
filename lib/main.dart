import 'package:flutter/material.dart';
import 'package:space_app/Ui/Details%20Page/details_screen.dart';
import 'package:space_app/Ui/Home%20Page/home_screen.dart';
import 'package:space_app/Ui/Lannding%20Page/landing_page.dart';
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
        Routes.landingRoute: (context) => const LandingScreen(),
        Routes.homeRoute: (context) => const HomeScreen(),
        Routes.detailsRoute: (context) => const DetailsScreen()
      },
    );
  }
}
