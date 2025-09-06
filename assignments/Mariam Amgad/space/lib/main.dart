import 'package:contacts/pages/AboutPage.dart';
import 'package:contacts/pages/ExplorePage.dart';
import 'package:contacts/pages/FirstPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
  debugShowCheckedModeBanner: false,
initialRoute: Firstpage.RouteName,
routes: {

  Firstpage.RouteName: (context) => Firstpage(),
  Explorepage.RouteName: (context) => Explorepage(),
  Aboutpage.RouteName: (context) => Aboutpage(),

}
,

    );
  }
}