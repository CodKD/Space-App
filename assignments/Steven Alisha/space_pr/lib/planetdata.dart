import 'package:flutter/cupertino.dart';
import 'package:space2/planetdatamodel.dart';

class Planet extends StatelessWidget {
    Planet({super.key,required this.planetData});
  PlanetData planetData;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(top: 20),
        children:[ Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(planetData.about),
              SizedBox(height: 6,),
              Text('Distance from Sun(Km)'+planetData.distance,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              SizedBox(height: 2,),
              Text('Length of Day (hours) :'+planetData.length,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              SizedBox(height: 2,),
              Text('Orbital Period (Earth years)'+planetData.orbital,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              SizedBox(height: 2,),
              Text('Radius (km)'+planetData.radius,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              SizedBox(height: 2,),
              Text('Mass (kg)'+planetData.mass,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              SizedBox(height: 2,),
              Text('Gravity (m/s²)'+planetData.gravity,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
              SizedBox(height: 2,),
              Text('Surface Area (km²)'+planetData.surface,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),




            ],
          ),
        ),
          ],
      ),
    );
  }
}
