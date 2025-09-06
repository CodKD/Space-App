import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Jupiter.dart';
import 'package:space/Mars_Details.dart';
import 'package:space/Mercury.dart';
import 'package:space/Planet_Screen.dart';

class Mars extends StatelessWidget{
  static const String routeName='mars';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/mars.png',name: 'Mars',pop: Jupiter.routeName,
    push: Mercury.routeName,explorepush: MarsDetails.routeName,);
  }

}