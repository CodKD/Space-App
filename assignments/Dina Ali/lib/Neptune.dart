import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Mercury.dart';
import 'package:space/Neptune_Details.dart';
import 'package:space/Planet_Screen.dart';
import 'package:space/Saturn.dart';

class Neptune extends StatelessWidget{
  static const String routeName='neptune';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetScreen(image: 'assets/images/neptune.png',name: 'Neptune',pop: Mercury.routeName,
    push: Saturn.routeName,explorepush: NeptuneDetails.routeName,);
  }

}