import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Earth.dart';
import 'package:space/Planet_Screen.dart';
import 'package:space/Uranus.dart';
import 'package:space/Venus_Details.dart';

class Venus extends StatelessWidget{
  static const String routeName='venus';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/venus.png',name: 'Venus',pop: Uranus.routeName,
    push: Earth.routeName,explorepush: VenusDetails.routeName,);
  }

}