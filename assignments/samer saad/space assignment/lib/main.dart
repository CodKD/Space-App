import 'package:flutter/material.dart';

import 'Planet Details/planet_details.dart';
import 'home/home_screen.dart';
import 'login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

       initialRoute: Login.routeNamed,
        routes: {
          HomeScreen.routeNamed: (context){return HomeScreen();},
          Login.routeNamed: (context){return Login();},
          PlanetDetails.routeNamed: (context){return PlanetDetails();}

        }
    );
  }
}
