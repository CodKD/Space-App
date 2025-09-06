import 'package:flutter/material.dart';
import 'package:space/pages/Home_Screen.dart';
import 'package:space/pages/Login_Screen.dart';
import 'package:space/pages/about_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName : (context) => (LoginScreen()),
        HomeScreen.routeName : (context) => (HomeScreen()),
        AboutScreen.routeName : (context) => (AboutScreen()),
      },
    );
  }

}