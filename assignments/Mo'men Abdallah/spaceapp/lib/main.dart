import 'package:flutter/material.dart';
import 'package:spaceapp/landingPage/homepage.dart';
import 'package:spaceapp/planetPage/discover_planets.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SpaceHome.routeName,
      routes: {
        SpaceHome.routeName: (context) => SpaceHome(),
        DiscoverPlanetsScreen.routeName: (context) => DiscoverPlanetsScreen(),
      },
    );
  }
}
