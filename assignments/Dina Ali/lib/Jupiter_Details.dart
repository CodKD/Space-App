import 'package:flutter/cupertino.dart';
import 'package:space/Jupiter.dart';
import 'package:space/Planet_Details.dart';

class JupiterDetails extends StatelessWidget{
  static const String routeName='jupiterDetails';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
      backtoplants: Jupiter.routeName,
        name: "Jupiter",
        title: 'Jupiter: The Gas Giant',
        about: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
        distance: '778,547,669', length: '9.92',
        period: '11.86',
        radius: '69,911', mass: '1.898 × 10²⁷', gravity: '24.79', area: '6.21 × 10¹⁵',
        image: 'jupiter');
  }
}