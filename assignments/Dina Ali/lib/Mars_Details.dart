import 'package:flutter/cupertino.dart';
import 'package:space/Mars.dart';
import 'package:space/Planet_Details.dart';

class MarsDetails extends StatelessWidget{
  static const String routeName='marsDetails';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
      backtoplants: Mars.routeName,
        name: 'Mars',
        title: "Mars: The Red Planet",
        about: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
        distance: "227,943,824",
        length: '24.62',
        period: '1.88',
        radius: '3,389.5',
        mass: '6.39 × 10²³',
        gravity: '3.71', area: '1.45 × 10⁸', image: 'mars');
  }
}