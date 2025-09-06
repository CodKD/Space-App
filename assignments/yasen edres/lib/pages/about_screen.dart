import 'package:flutter/material.dart';
import 'package:space/model/planet_args.dart';

import 'package:space/model/planet_data.dart';

class AboutScreen extends StatelessWidget{
  static const String routeName ='About_Screen';
  @override
  Widget build(BuildContext context) {
    PlanetArgs args = ModalRoute.of(context)?.settings.arguments as PlanetArgs;
    final List<PlanetData> plantes = args.plantList;
    final String currentPlanet = args.planetName;
    final PlanetData planet = plantes.firstWhere((p) => p.planetName ==currentPlanet);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [

          Image.asset('assets/images/about_bacground.png',
          width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 12,right: 12,bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Container(
                    padding: EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      color: Color(0xFFEE403D),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_back,
                      color: Colors.white,),
                  ),
                ),
                SizedBox(height: 36,),
                Text('$currentPlanet: ${planet.nickName}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),),
                SizedBox(height: 30,),
                Image.asset('assets/images/$currentPlanet.png',
                width: double.infinity,
                height: 250,),
                SizedBox(height: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,// why not work
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('About',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),),
                    SizedBox(height: 10,),
                    Text(planet.aboutDetails,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),),
                    SizedBox(height: 10,),
                    Text('Distance from Sun (km) :${planet.distanceOfSun}\nLength of Day (hours) :${planet.lengthOfDay}\nOrbital Period (Earth years) : ${planet.orbitalPeriod}\nRadius (km) :${planet.radius}\nMass (kg) :${planet.mass}\nGravity (m/s²) :${planet.gravity}\nSurface Area (km²) :${planet.surfaceArea}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}