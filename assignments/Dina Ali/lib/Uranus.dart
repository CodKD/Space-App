import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Planet_Screen.dart';
import 'package:space/Sun.dart';
import 'package:space/Uranus_Details.dart';
import 'package:space/Venus.dart';

class Uranus extends StatelessWidget{
  static const String routeName='uranus';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/uranus.png',name: 'Uranus',pop: Sun.routeName,
        push: Venus.routeName,explorepush: UranusDetails.routeName,);
  }

}