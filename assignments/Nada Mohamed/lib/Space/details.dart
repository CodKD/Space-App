import 'package:flutter/material.dart';
import 'package:task3/Space/spaces.dart';

class Planet {
  final String titel;
  final String about;
  double distance, length;
  double orbitalperiod, radius, mass, surfacearea,gravity;

  Planet({
    required this.titel,
    required this.about,
    required this.distance,
    required this.length,
    required this.orbitalperiod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfacearea,
  });
}

class PlanetDetails extends StatelessWidget {
  static String routename = 'details';
  final Space space;

  PlanetDetails({required this.space});

  final Map<String, Planet> planetDetailsMap = {
    "Sun": Planet(
      titel: "Sun:Our Solar System's Star",
      about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distance: 0,
      length: 0,
      orbitalperiod: 0,
      radius: 695.700,
      mass: 1.989e30,
      gravity: 274,
      surfacearea: 6.09e12,
    ),
    "Mercury": Planet(
      titel: "Mercury:The Closest Planet",
      about: "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distance: 57909227,
      length: 1407.6,
      orbitalperiod: 0.24,
      radius:2439.7,
      mass: 3.285e23,
      gravity: 3.7,
      surfacearea: 7.48e7,
    ),
    "Venus": Planet(
      titel: "Venus: Earth's Toxic Twin",
      about: "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
      distance: 108.209072,
      length: 5832.2,
      orbitalperiod: 0.62,
      radius: 6051.80,
      mass: 4.867e24,
      gravity: 8.87 ,
      surfacearea: 4.6e8,
    ),
    "Earth": Planet(
      titel: "Earth: Our Blue Marble",
      about: "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
      distance: 149598026,
      length: 23.93,
      orbitalperiod: 1,
      radius: 6371,
      mass: 5.972e24,
      gravity: 9.81,
      surfacearea: 5.1e8,
    ),
    "Mars": Planet(
      titel: "Mars:The Red Planet",
      about: "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
      distance: 227943824,
      length: 24.62,
      orbitalperiod: 1.88,
      radius: 3389.5,
      mass: 6.39e23,
      gravity:3.71,
      surfacearea: 1.45e8,
    ),
    "Jupiter": Planet(
      titel: "Jupiter:The Gas Giant",
      about: "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
      distance: 778547669,
      length: 9.92,
      orbitalperiod:11.86,
      radius: 69911,
      mass: 1.898e27,
      gravity:24.79 ,
      surfacearea: 6.14e10,
    ),
    "Saturn": Planet(
      titel: "Saturn:The Ringed Planet",
      about: "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
      distance: 1426666422,
      length: 10.66,
      orbitalperiod:29.46,
      radius: 58232,
      mass: 5.683e26,
      gravity: 10.44,
      surfacearea: 4.27e10,
    ),
    "Uranus": Planet(
      titel: "Uranus: The Tilted Planet",
      about: "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
      distance:2870990000,
      length: 17.24,
      orbitalperiod: 84.01,
      radius: 25362,
      mass: 8.681e25,
      gravity: 8.69,
      surfacearea: 8.1e9,
    ),
    "Neptune": Planet(
      titel: "Neptune: The Distant World",
      about: "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
      distance: 4498252900,
      length: 16.11,
      orbitalperiod: 164.8,
      radius: 24622,
      mass: 1.024e26,
      gravity: 11.15,
      surfacearea: 7.65e9,
    ),
  };

  @override
  Widget build(BuildContext context) {
    final Planet selectedPlanet = planetDetailsMap[space.name]!;
    return SafeArea(child:  Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFF0E0E0E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/background_image.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Image.asset(
                    "assets/images/gradient_image.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(12),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        elevation: 4,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 22,
                      ),
                    ),
                       SizedBox(width: 80,),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text(
                          space.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedPlanet.titel,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/images/${space.name.toLowerCase()}_image.png",
              height: 250,
              fit: BoxFit.contain,
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About",
                      style:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(selectedPlanet.about,
                      style:TextStyle(fontSize: 15,color: Colors.grey),
                    ),
                    SizedBox(height: 5),
                    Text("Distance from Sun (km) :${selectedPlanet.distance}",
                        style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text("Length of Day (hours) :${selectedPlanet.length}",
                      style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text("Orbital Period (Earth years) :${selectedPlanet.orbitalperiod}",
                      style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text("Radius (km) : ${selectedPlanet.radius}",
                      style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text("Mass (kg) : ${selectedPlanet.mass}",
                      style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text("Gravity (m/s²) : ${selectedPlanet.gravity}",
                      style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text("Surface Area (km²) : ${selectedPlanet.surfacearea}",
                      style: TextStyle( fontSize: 15,color:Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
