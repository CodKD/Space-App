import 'package:flutter/cupertino.dart';
import 'package:space/Planet_Details.dart';
import 'package:space/Saturn.dart';

class SaturnDetails extends StatelessWidget{
  static const String routeName='saturnDetails';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return PlanetDetails(
  backtoplants: Saturn.routeName,
  name: 'Saturn',
    title: 'Saturn: The Ringed Planet',
    about: "Saturn is best known for its spectacular rings,"
        " which are composed of countless ice particles and rocks."
        " It is a gas giant with a composition similar to Jupiter,"
        " but its rings and moons give it a distinct appearance."
        " Saturn's largest moon,Titan,"
        " has a thick atmosphere and is the only known"
        " celestial body outside of Earth with liquid lakes and rivers.",
    distance: '1,426,666,422',
    length: '10.66',
    period: '29.46',
    radius: '58,232',
    mass: '5.683 × 10²⁶',
    gravity: '10.44', area: '4.27 × 10¹⁵', image: 'saturn',);
  }

}