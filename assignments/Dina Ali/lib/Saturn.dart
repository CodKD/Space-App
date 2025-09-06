import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Neptune.dart';
import 'package:space/Planet_Screen.dart';
import 'package:space/Saturn_Details.dart';
import 'package:space/Sun.dart';

class Saturn extends StatelessWidget{
  static const String routeName='saturn';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/saturn.png',name: 'Saturn',pop: Neptune.routeName,
      push:Sun.routeName ,explorepush: SaturnDetails.routeName,);
  }

}