import 'package:flutter/cupertino.dart';
import 'package:space/Planet_Details.dart';
import 'package:space/Uranus.dart';

class UranusDetails extends StatelessWidget{
  static const String routeName='uranusDetails';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
        backtoplants: Uranus.routeName,
        name: 'Uranus',
        title: 'Uranus: The Tilted Planet',
        about: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
        distance: '2,870,990,000',
        length: '17.24',
        period: '84.01',
        radius: '25,362',
        mass: '8.681 × 10²⁵',
        gravity: '8.69',
        area: '8.1 × 10¹⁵',
        image: 'uranus');
  }
}