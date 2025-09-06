import 'package:flutter/material.dart';
import 'package:space_app/pages/widgets/topAppBar.dart';
import '/core/assets/usedColors.dart';
import '../solarDescriptions/PlanetsDescription.dart';

class PlanetInfoScreen extends StatelessWidget{
  static String routeName ='PlanetInfo';
  late int index;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments;
    index = args is int ? args : 0;
    return Scaffold(
      backgroundColor: UsedColor.blackColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(144),
          child: TopAppBar(
            title: PlanetsDescription.planetsList[index].name,
            description: PlanetsDescription.planetsList[index].title,
            enableLeading: true,
          ),
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Image.asset(PlanetsDescription.planetsList[index].model),
              ),

              const Text('About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: description
              Text(PlanetsDescription.planetsList[index].aboutSection,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              //todo: distance
              Text('Distance from Sun (km):${PlanetsDescription.planetsList[index].distanceFromSun}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: length
              Text('Length of Day (hours):${PlanetsDescription.planetsList[index].lengthOfDay}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: period
              Text('Orbital Period (Earth years): ${PlanetsDescription.planetsList[index].orbitalPeriod} ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: radius
              Text('Radius (km):${PlanetsDescription.planetsList[index].radius}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: mass
              Text('Mass (kg):${PlanetsDescription.planetsList[index].mass}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: gravity
              Text('Gravity (m/s²):${PlanetsDescription.planetsList[index].gravity}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //todo: area
              Text('Surface Area (km²):${PlanetsDescription.planetsList[index].surfaceArea}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12)
            ],
          ),
        ),
      ),
    );
  }
}