import 'package:assignment_3_space/home/home_screen.dart';
import 'package:assignment_3_space/home/home_screen_two.dart';
import 'package:assignment_3_space/home/login_screen.dart';
import 'package:assignment_3_space/home/planet_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {

        'login' : (context) => loginScreen(),
        'homeOne' : (context) => homeScreenOne(),

      },
    );
  }
}