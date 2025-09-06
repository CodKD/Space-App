import 'package:flutter/material.dart';
import 'package:task3/Space/details.dart';

class Space {
  final String name;
  final String path;
  Space({required this.name, required this.path});

}

class Spaces extends StatefulWidget {
  static String routename = 'spaces';

  @override
  _SpacesState createState() => _SpacesState();
}

class _SpacesState extends State<Spaces> {
  int currentIndex = 0;

  final List<Space> spaces = [
     Space(name: "Mercury", path: "assets/images/mercury_image.png"),
     Space(name: "Venus", path: "assets/images/venus_image.png"),
    Space(name: "Earth", path: "assets/images/earth_image.png"),
    Space(name: "Mars", path: "assets/images/mars_image.png"),
    Space(name: "Sun", path: "assets/images/sun_image.png"),
    Space(name: "Uranus", path: "assets/images/uranus_image.png"),
    Space(name: "Saturn", path: "assets/images/saturn_image.png"),
    Space(name: "Neptune", path: "assets/images/neptune_image.png"),
    Space(name: "Jupiter", path: "assets/images/jupiter_image.png"),
  ];

  @override
  Widget build(BuildContext context) {
    final currentSpace = spaces[currentIndex];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              currentSpace.path,
              height: 350,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    if (currentIndex > 0) {
                      setState(() {
                        currentIndex--;
                      });
                    }
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
                Text(
                  currentSpace.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(width:60,),
                ElevatedButton(
                  onPressed:(){
                    if (currentIndex < spaces.length - 1) {
                      setState(() {
                        currentIndex++;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(12),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    elevation: 4,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 22,
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanetDetails(space: currentSpace,),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEE403D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 4,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Explore ${currentSpace.name}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
