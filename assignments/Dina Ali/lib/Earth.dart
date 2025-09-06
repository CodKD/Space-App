import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Earth_Details.dart';
import 'package:space/Jupiter.dart';
import 'package:space/Login_Screen.dart';
import 'package:space/Planet_Screen.dart';

class Earth extends StatelessWidget{
  static const String routeName='earth';


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/earth.png',name: 'Earth',pop:LoginScreen.routeName,
      push:Jupiter.routeName ,explorepush: EarthDetails.routeName,);
  }

}