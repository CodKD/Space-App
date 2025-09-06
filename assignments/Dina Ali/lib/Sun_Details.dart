import 'package:flutter/cupertino.dart';
import 'package:space/Planet_Details.dart';
import 'package:space/Sun.dart';

class SunDetails extends StatelessWidget{
  static const String routeName='sunDetails';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
      backtoplants: Sun.routeName,
        name: 'Sun',
        title: "The Sun: Our Solar System's Star",
        about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        distance: '0',
        length: '0',
        period: '0',
        radius: '695,700',
        mass: '1.989 × 10³⁰',
        gravity: '274',
        area: '6.09 × 10¹²',
        image: 'sun');
  }
}