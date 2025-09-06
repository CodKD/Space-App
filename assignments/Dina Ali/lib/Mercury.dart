import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Mars.dart';
import 'package:space/Mercury_Details.dart';
import 'package:space/Neptune.dart';
import 'package:space/Planet_Screen.dart';

class Mercury extends StatelessWidget{
  static const String routeName='mercury';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/mercury.png',name: 'Mercury',pop: Mars.routeName,
    push: Neptune.routeName,explorepush: MercuryDetails.routeName,);
  }

}