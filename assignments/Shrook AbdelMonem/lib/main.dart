import 'package:flutter/material.dart';
import 'package:space_app/pages/loginScreen.dart';
import 'package:space_app/pages/homeScreen.dart';
import 'package:space_app/pages/planetInfoScreen.dart';

void main(){
  runApp(SpaceApp());
}
class SpaceApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        PlanetInfoScreen.routeName: (context) => PlanetInfoScreen(),
      },
    );
  }

}