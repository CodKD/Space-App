import 'package:flutter/material.dart';
import 'package:task3/Space/details.dart';
import 'package:task3/Space/home_screen.dart';
import 'package:task3/Space/login_screen.dart';
import 'package:task3/Space/spaces.dart';

void main(){
  runApp(MyAPP());
}
class MyAPP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: LoginScreen.routename,
     routes:
     {HomeScreen.routename :(context)=>HomeScreen(),
       LoginScreen.routename :(context)=>LoginScreen(),
       Spaces.routename :(context)=>Spaces(),
       PlanetDetails.routename :(context)=>PlanetDetails(space:Space(name: '', path:''),),
     }
     ,home: HomeScreen(),
   );
  }

}