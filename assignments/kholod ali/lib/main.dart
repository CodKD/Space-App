import 'package:flutter/material.dart';
import 'package:space_app/details.dart';
import 'package:space_app/earth_photos.dart';
import 'package:space_app/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomeScreen(),
          'earth':(context)=> EarthScreen(),
          'details':(context)=> Details(),
        }
    );
  }
}
