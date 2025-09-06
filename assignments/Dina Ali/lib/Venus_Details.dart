import 'package:flutter/cupertino.dart';
import 'package:space/Planet_Details.dart';
import 'package:space/Venus.dart';

class VenusDetails extends StatelessWidget{
  static const String routeName='venusDetails';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(
      backtoplants: Venus.routeName,
        name: 'Venus',
        title: "Venus: Earth's Toxic Twin",
        about: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
        distance: "108,209,072",
        length: "5,832.2", period: '0.62',
        radius: '6,051.8', mass: '4.867 × 10²⁴',
        gravity: '8.87', area: '4.60 × 10⁸', image: "venus");
  }
}