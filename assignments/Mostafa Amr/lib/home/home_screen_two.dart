import 'package:assignment_3_space/home/planet_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homeScreenTwo extends StatelessWidget{
final Planet planet;
homeScreenTwo({required this.planet});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
      backgroundColor: Color(0xff0E0E0E),
      body:SingleChildScrollView(child:
      Column(
          children: [
      Stack(
      children: [
      Image.asset('assets/images/Rectangle 4.png'),
      Positioned(
        top: 40,
        left: 170,
        child: Text("  ${  planet.name}",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xffffffff),fontSize: 30,fontWeight: FontWeight.bold
        ),
        ),
      ),
      Positioned(
          bottom: 20,
          child: Text(' ${planet.name}: Our Blue Marble',
              style: TextStyle(
                  color: Color(0xffffffff),fontSize: 25,fontWeight: FontWeight.bold)
          )
      ),
        Positioned(top: 40,left: 10,
            child:Row(
              children: [
                Container(decoration: BoxDecoration(
                  color: Color(0xffEE403D),
                  shape: BoxShape.circle
                ),
                child: 
                IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                    icon: Icon(Icons.arrow_back,color: Color(0xffffffff),))
                )
              ],
            ) )
      ],
       ),
            Center(
              child:Image.asset(planet.image,
                width: 430,height: 430,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(padding: EdgeInsets.only(left: 16),
                child: Text('About',style: TextStyle(color: Color(0xffffffff),
                fontSize: 25,
                fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Text(' ${planet.name} is the only known planet in the universe'
                    ' that supports life. Its unique combination of factors,'
                    ' including liquid water, a breathable atmosphere, '
                    ' and a suitable distance from the Sun, has created'
                    ' the ideal conditions for the development of complex organisms.'
                    ' Earth s magnetic field protects it from harmful solar radiation,'
                    ' and its atmosphere helps to regulate temperature and weather patterns.',
                style: TextStyle(color: Color(0xffffffff),fontSize: 20),
                ),
                SizedBox(height: 20,),
                Text('Distance from Sun (km) : 149598026\n'
                'Length of Day (hours) : 23.93\n'
                'Orbital Period (Earth years) : 1\n'
                'Radius (km) : 6371)\n'
                'Mass (kg) : 5.972 × 10²⁴\n'
                'Gravity (m/s²) : 9.81\n'
                'Surface Area (km²) : 5.10 × 10⁸',
                  style: TextStyle(color: Color(0xffffffff),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40,)
              ],
            )
           ]
        )
      )
    );
  }
}