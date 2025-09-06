import 'package:flutter/material.dart';
import 'package:space/Earth_Details.dart';
import 'package:space/Jupiter.dart';
import 'package:space/Jupiter_Details.dart';
import 'package:space/Login_Screen.dart';
import 'package:space/Mars.dart';
import 'package:space/Mars_Details.dart';
import 'package:space/Mercury.dart';
import 'package:space/Mercury_Details.dart';
import 'package:space/Neptune.dart';
import 'package:space/Neptune_Details.dart';
import 'package:space/Saturn.dart';
import 'package:space/Saturn_Details.dart';
import 'package:space/Sun.dart';
import 'package:space/Sun_Details.dart';
import 'package:space/Uranus.dart';
import 'package:space/Uranus_Details.dart';
import 'package:space/Venus.dart';
import 'package:space/Earth.dart';
import 'package:space/Venus_Details.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: LoginScreen.routeName,
     routes: {
       LoginScreen.routeName:(context)=>LoginScreen(),
       Earth.routeName:(context)=>Earth(),
       Jupiter.routeName:(context)=>Jupiter(),
       Mars.routeName:(context)=>Mars(),
       Mercury.routeName:(context)=>Mercury(),
       Neptune.routeName:(context)=>Neptune(),
       Saturn.routeName:(context)=>Saturn(),
       Sun.routeName:(context)=>Sun(),
       Uranus.routeName:(context)=>Uranus(),
       Venus.routeName:(context)=>Venus(),
       EarthDetails.routeName:(context)=>EarthDetails(),
       JupiterDetails.routeName:(context)=>JupiterDetails(),
       MarsDetails.routeName:(context)=>MarsDetails(),
       MercuryDetails.routeName:(context)=>MercuryDetails(),
       NeptuneDetails.routeName:(context)=>NeptuneDetails(),
       SaturnDetails.routeName:(context)=>SaturnDetails(),
       SunDetails.routeName:(context)=>SunDetails(),
       UranusDetails.routeName:(context)=>UranusDetails(),
       VenusDetails.routeName:(context)=>VenusDetails(),
     },
   );
  }

}