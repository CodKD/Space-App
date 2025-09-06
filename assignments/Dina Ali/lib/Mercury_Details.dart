import 'package:flutter/cupertino.dart';
import 'package:space/Mercury.dart';
import 'package:space/Planet_Details.dart';

class MercuryDetails extends StatelessWidget{
  static const String routeName='mercuryDetails';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
      backtoplants: Mercury.routeName,
        name: 'Mercury',
        title: 'Mercury: The Closest Planet',
        about: "Mercury is the smallest planet in our solar system and the one closest to the Sun. It is a rocky world with a heavily cratered surface, resembling Earth’s Moon. Mercury has almost no atmosphere, which causes extreme temperature shifts: scorching heat during the day and freezing cold at night. It takes only 88 Earth days to orbit the Sun, making it the fastest planet in our solar system. Despite its small size, Mercury has a strong iron-rich core that creates a weak magnetic field, and its lack of atmosphere and water makes it one of the most barren worlds in our solar neighborhood.",
        distance: '57,909,227',
        length: '1,407.6',
        period: '0.24', radius: '2,439.7',
        mass: '3.301 × 10²³', gravity: '3.7', area: '7.48 × 10⁷', image:'mercury')
        ;
  }
}