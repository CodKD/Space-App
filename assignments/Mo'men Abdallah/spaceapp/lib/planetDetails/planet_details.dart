import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:spaceapp/planetPage/planets.dart';

class PlanetDetailsScreen extends StatelessWidget {
  static const String routeName = "PlanetDetails";
  final Planets planet;

  const PlanetDetailsScreen({super.key, required this.planet});
  String _getPlanetSubtitle(String planetName) {
    switch (planetName) {
      case "Earth":
        return ": Our Blue Marble";
      case "Mars":
        return ": The Red Planet";
      case "Jupiter":
        return ": The Gas Giant";
      case "Saturn":
        return ": The Ringed Planet";
      case "Venus":
        return ": Earth's Toxic Twin";
      case "Mercury":
        return ": The Closest Planet";
      case "Uranus":
        return ": The Tilted Planet";
      case "Neptune":
        return ": The Distant World";
      case "The Sun":
        return ": Our Solar System's Star";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body: Stack(
        children: [
          Image.asset(
            "assets/models/topScreen.png",
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      FloatingActionButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        heroTag: "back_to_discover",
                        mini: true,
                        backgroundColor: Color(0xffEE403D),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            planet.name,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${planet.name}${_getPlanetSubtitle(planet.name)}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 300,
                            child: InteractiveViewer(
                              scaleEnabled: true,
                              scaleFactor: 150,
                              panEnabled: true,
                              child: ModelViewer(
                                key: Key('details_model_${planet.name}'),
                                src: planet.imagePath,
                                autoRotate: true,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Text(
                            "About",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            planet.description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 30),
                          SizedBox(height: 10),
                          Text(
                            planet.information,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
