import 'package:flutter/material.dart';
import 'package:space_app/screens/home_screen.dart';
import 'package:space_app/screens/login_screen.dart';
import 'package:space_app/screens/planet_details.dart';
import 'package:space_app/utilis/app_routes.dart';
import 'package:space_app/utilis/readfile.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ReadDate().readFile();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginRouteName,
      routes: {AppRoutes.loginRouteName: (context)=>LoginScreen(),
        AppRoutes.homeRouteName: (context) => HomeScreen(),
        AppRoutes.detailsRouteName: (context) => PlanetDetails(),

      },
    );
  }


}