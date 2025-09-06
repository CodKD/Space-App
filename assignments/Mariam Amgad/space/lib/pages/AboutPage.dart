import 'package:contacts/Components/AllColors.dart';
import 'package:contacts/Components/ExplorecContainer.dart';
import 'package:contacts/Components/SelectedPlanet.dart';
import 'package:flutter/material.dart';

class Aboutpage extends StatelessWidget{
  late Selectedplanet args;
    static const String RouteName = "aboutpage";

  Widget build(BuildContext context){

   args =ModalRoute.of(context)?.settings.arguments as Selectedplanet;
   
    return Scaffold(
    backgroundColor: Allcolors.blackcolor,

      body: SingleChildScrollView(
  
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 

children: [
  Explorecontaier(text1:args.planet.planetname , text2: args.planet.Describtion,showIcon: true,),
  Container(
    width: double.infinity,
    height: 340,
    decoration: BoxDecoration(
      color: Allcolors.blackcolor,
      image: DecorationImage(image: AssetImage(args.planet.planetimage,),fit: BoxFit.fill,)
    ),
  ),

Text("About",style: TextStyle(color: Allcolors.Textcolor,fontSize: 24,fontWeight: FontWeight.w700),),
SizedBox(height: 5,),
Text(args.planet.about,style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w300),),
SizedBox(height: 5,),
Text("Distance from Sun (km) :${args.planet.DistancefromSun}",style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w700),),
SizedBox(height: 5,),
Text("Orbital Period (Earth years):${args.planet.OrbitalPeriod}",style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w700),),
SizedBox(height: 5,),
Text("Radius (km) :${args.planet.Radius}",style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w700),),
SizedBox(height: 5,),
Text("Mass (kg) :${args.planet.Mass}",style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w700),),
SizedBox(height: 5,),
Text("Gravity (m/s²):${args.planet.Gravity}",style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w700),),
SizedBox(height: 5,),
Text("Surface Area (km²):${args.planet.SurfaceArea}",style: TextStyle(color: Allcolors.Textcolor ,fontSize: 16 , fontWeight: FontWeight.w700),),


],





        ),
      )
    );
  }
}