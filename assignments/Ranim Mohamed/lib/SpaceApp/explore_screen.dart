import 'package:flutter/material.dart';
import 'planet_details_screen.dart';

class ExploreScreen extends StatefulWidget {
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
   String planetName = 'Earth';

   String planetImage = 'assets/Earth.png';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Colors.black,
    body: Column(
    children: [

    Expanded(
    child: Stack(
    alignment: Alignment.center,
    children: [

    Align(
    alignment: Alignment.centerLeft,
    child: Image.asset(
    "assets/images/space.png",
    fit: BoxFit.cover,
    width: MediaQuery.of(context).size.width * 0.5,
    height: double.infinity,
    ),
    ),


    Positioned(
    top: 100,
    left: 20,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "Explore",
    style: TextStyle(
    color: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    ),
    ),
      Text(
            " The Universe",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

    SizedBox(height: 10),
    ],
    ),
    ),
    ],
    ),
    ),


    Padding(
    padding: const EdgeInsets.all(16.0),
    child: SizedBox(
    width: double.infinity,
    height: 50,
    child:ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        shape: StadiumBorder(),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PlanetDetailsScreen(planetName: planetName);
            },
          ),
        );
      },
      child: Text("Explore"),
    ),

    ),
    ),
    ],
    ),
    );
    }
}






