import 'package:flutter/cupertino.dart';
import 'package:space/Earth.dart';
import 'package:space/Planet_Details.dart';

class EarthDetails extends StatelessWidget{
  static const String routeName='earthDetails';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PlanetDetails(backtoplants:Earth.routeName,image: 'earth 2',name: 'Earth',title: 'Earth: Our Blue Marble',about: ""
        "Earth is the only known planet in the universe that supports life."
        " Its unique combination of factors, including liquid water,"
        " a breathable atmosphere, and a suitable distance from the Sun,"
        " has created the ideal conditions for the development of complex organisms."
        " Earth's magnetic field protects it from harmful solar radiation,"
        " and its atmosphere helps to regulate temperature and weather patterns.",
      distance:'149,598,026',radius:'6,371' ,area:'5.10 × 10⁸' ,
      gravity:'9.81' ,length:'23.93' ,mass:'5.972 × 10²⁴' ,period:'1' ,);
  }

}