import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space2/planetdata.dart';
import 'package:space2/planetdatamodel.dart';
import 'package:space2/spaceScreen.dart';

List<PlanetData> planetdataList=[

  PlanetData(


      about:'The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Suns magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.' , distance: '0', length: '0', orbital: '0', radius: '695700', mass:  '1.989 × 10³⁰', gravity: '274', surface:
  '6.09 × 10¹²'),
  PlanetData(

      about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies." , distance: '57909227', length: '1407.6', orbital: '0.24', radius: '2439.7', mass:  ' 3.301 × 10²³', gravity: '3.7', surface:
  '7.48 × 10⁷'),
  PlanetData(

      about:"Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance." , distance: '227943824', length: '24.62.2', orbital: '1.88', radius: '3389.5', mass:  '6.39 × 10²³', gravity:"8.3.71", surface:
  '6.09 × 10¹²'),
  PlanetData(

      about:"Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.", distance: '108209072', length: '778547669', orbital: '0.62', radius: '6371.8', mass:  '11.86', gravity: '24.79', surface:"4.60 × 10⁸"),
  PlanetData(

      about:"Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface." , distance: '1426666422', length: '10.66', orbital: '58232', radius: '695700', mass:  '15.683 × 10²⁶', gravity: '10.44', surface:
  '5.10 × 10⁸'),

  PlanetData(

      about: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life", distance: '0', length: '0', orbital: '0', radius: '695700', mass:  '1.989 × 10³⁰', gravity: '8.69', surface:
  '6.21 × 10¹⁵'),
  
  PlanetData(

      about:"Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color. " , distance: '0', length: '0', orbital: '0', radius: '695700', mass:  '1.989 × 10³⁰', gravity: '274', surface:
  '8.1 × 10¹⁵ '),
  PlanetData(

      about:"Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object. " , distance: '4498252900', length: '164.8', orbital: '4498252900', radius: '24622', mass:  '1.024 × 10²⁶', gravity: '11.15', surface:
  '7.65 × 10¹⁵'),




];


class Planetdetailsscreen extends StatefulWidget {
    Planetdetailsscreen({super.key});

  static String Routename =  'Planetdetailsscreen';

  @override
  State<Planetdetailsscreen> createState() => _PlanetdetailsscreenState();
}



class _PlanetdetailsscreenState extends State<Planetdetailsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(


        
 leading: Padding(
   padding: const EdgeInsets.only(bottom: 50),
   child: Icon(
   color: Colors.red,
       Icons.arrow_back),
 ),
      flexibleSpace:
      Stack(children:[
        Image.asset('assets/topimage.png',fit: BoxFit.fill,height: double.infinity,width: double.infinity,),
        Center(child: Text(planetname[index],style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 50.0,left: 10),

          child: Text(planetTitle[index] ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

        ),

          ]
    ),
    ),

body: Column(children: [
  SizedBox(height: 10,),
  Image(image: AssetImage(images[index])),
  Planet(planetData:planetdataList[index])
],

),
    );
  }
}
