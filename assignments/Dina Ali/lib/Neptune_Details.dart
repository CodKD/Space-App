import 'package:flutter/cupertino.dart';
import 'package:space/Neptune.dart';
import 'package:space/Planet_Details.dart';

class NeptuneDetails extends StatelessWidget{
  static const String routeName='neptuneDetails';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
      backtoplants: Neptune.routeName,
        name: 'Neptune',
        title: 'Neptune: The Distant World',
        about: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
        distance: "4,498,252,900",
        length: '16.11',
        period: '164.8',
        radius: '24,622',
        mass: '1.024 × 10²⁶', gravity: '11.15', area: '7.65 × 10¹⁵', image: "neptune")
      ;}
}