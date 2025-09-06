import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/details_screen/details_screen.dart';
import 'package:space_app/firts_screen/first_screen.dart';
import 'package:space_app/home_screen/home_screen.dart';
import 'package:space_app/utils/app_routs.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: routsName.firstScreen,
     routes: {
       routsName.firstScreen : (context) => firstScreen(),
       routsName.HomeScreen : (context) => Home(),
       routsName.detailsScreen : (context) => detailsScreen(),
     },
   );
  }

}