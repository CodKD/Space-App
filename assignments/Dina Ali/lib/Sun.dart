import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Planet_Screen.dart';
import 'package:space/Saturn.dart';
import 'package:space/Sun_Details.dart';
import 'package:space/Uranus.dart';

class Sun extends StatelessWidget{
  static const String routeName='sun';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/sun.png',name: 'Sun',pop: Saturn.routeName,
    push: Uranus.routeName,explorepush: SunDetails.routeName,);
  }

}