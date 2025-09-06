import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Earth.dart';
import 'package:space/Jupiter_Details.dart';
import 'package:space/Mars.dart';
import 'package:space/Planet_Screen.dart';

class Jupiter extends StatelessWidget{
  static const String routeName='jupiter';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/jupiter.png',name: 'Jupiter',pop: Earth.routeName,
    push: Mars.routeName,explorepush: JupiterDetails.routeName,);
  }

}