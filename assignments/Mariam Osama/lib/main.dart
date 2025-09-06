import 'package:flutter/material.dart';
import 'package:space_app/Home_screen.dart';
import 'package:space_app/Login.dart';
import 'package:space_app/Planets.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        initialRoute: Login.routeName ,
        routes: {
          Login.routeName: (context) => Login(),
          HomeScreen.routeName: (context) => HomeScreen(),
          PlanetDetailsScreen.routeName: (context) => PlanetDetailsScreen(
            planetName: '', planetImage: '', description: '',identity: '',
          ),
        }
    );
  }

}
