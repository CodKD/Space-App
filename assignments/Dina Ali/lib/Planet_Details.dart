import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/app_colors.dart';

class PlanetDetails extends StatelessWidget{
  String backtoplants;
  String title;
  String name;
  String about;
  String distance;
  String length;
  String period;
  String radius;
  String mass;
  String gravity;
  String area;
  String image;

  PlanetDetails({required this.backtoplants,required this.name,required this.title,required this.about,required this.distance
  ,required this.length,required this.period,required this.radius,
    required this.mass,required this.gravity,required this.area,required this.image


});
  @override
  Widget build(BuildContext context) {
return SafeArea(
  child: Scaffold(
    backgroundColor: AppColor().black,
    body: SingleChildScrollView(
      child: Stack(
        children: [
          Image.asset('assets/images/topbackground.png',fit: BoxFit.fill),
          Image.asset('assets/images/gardient.png',fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushReplacementNamed(backtoplants);
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor().red,
                          shape: CircleBorder()),
                      child: Icon(
                        Icons.arrow_back_sharp, color: AppColor()
                          .white, size: 22,)),
                  Text(name,textAlign: TextAlign.center,style: TextStyle(color: AppColor()
                      .white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Space Grotesk'),),
                    Container(color: Colors.transparent,width: 46,),
                ],),
                Padding(
                  padding: const EdgeInsets.only(top:36,bottom: 65),
                  child: Text(title,style: TextStyle(color: AppColor()
                      .white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Space Grotesk'),),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: Image.asset(
                    'assets/images/$image.png', width: 343, height: 343,),
                ),
                Text('About\n',style:TextStyle(color: AppColor().white,
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                     fontFamily: 'Space Grotesk'),),
                Text(about+'\n',style:TextStyle(color: AppColor().white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Space Grotesk'),),
                Text('Distance from Sun (km): $distance\n\n Length of Day (hours): $length\n\n'
                    'Orbital Period (Earth years): $period\n\n'
                    'Radius (km): $radius\n\nMass (kg): $mass\n\nGravity (m/s²): $gravity\n\nSurface Area (km²): $area'
                  ,style:TextStyle(color: AppColor().white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Space Grotesk'),),


              ],
            ),
          )
        ],
      ),
    ),
  ),
);  }

}