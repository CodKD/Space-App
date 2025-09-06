import 'package:flutter/material.dart';
import 'package:space/pages/planet.dart';

class HomeScreen extends StatefulWidget{
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> planetsList =[
    'Earth','Mercury','Jupiter',
    'Mars','Neptune','Saturn',
    'Sun','Uranus','Venus'
  ];
  int planet = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/Home-image.png',
          width: double.infinity,
          fit:BoxFit.fill,
          height: double.infinity,),
          Planet(planetName: planetsList[planet],toForward: toForward,toBack: toBack,),
        ],
      ),
    );
  }

  int counter =0;

  void toForward(){

    if(planet<planetsList.length-1){
      counter++;
      planet++;
      setState(() {

      });
    }
  }
  void toBack(){
    if(planet>0){
      counter--;
      planet--;
    setState(() {

      });
    }
  }
}