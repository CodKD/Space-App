import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapce/Planet%20Details/text.dart';

class PlanetDetails extends StatelessWidget{
  static const String routeNamed='PlanetDetails';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar( toolbarHeight:150,backgroundColor: Colors.black
            ,flexibleSpace: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: BoxDecoration(
                    ),
                    child:    Image.asset("assets/images/appbar.png",fit: BoxFit.cover,),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(onPressed: (){
                              Navigator.of(context).pop();

                            }, icon: Image.asset('assets/images/buttomred.png')),
                            SizedBox(width: 110),
                            Text("Earth",
                              style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                        SizedBox(height: 55,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text("Earth: Our Blue Marble",
                            style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]
                  ),

                ]
            )
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Image.asset('assets/images/earth 2.png'),
              SizedBox(height: 16),
              Text(
                'About',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Earth is the only known planet in the universe that supports '
                    'life. Its unique combination of factors, including liquid water, a '
                    'breathable atmosphere, and a suitable distance from the Sun, has '
                    'created the ideal conditions for the development of complex '
                    'organisms. Earth\'s magnetic field protects it '
                    'from harmful solar radiation, and its atmosphere '
                    'helps to regulate temperature and weather patterns.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 15),
              Textt(text: 'Distance from Sun (km) : 149598026',),
              Textt(text: 'Length of Day (hours) : 23.93',),
              Textt(text: 'Orbital Period (Earth years) : 1',),
              Textt(text: 'Radius (km) : 6371',),
              Textt(text: 'Mass (kg) : 5.972 × 10²⁴',),
              Textt(text: 'Gravity (m/s²) : 9.81',),
              Textt(text: 'Surface Area (km²) : 5.10 × 10⁸',),

            ],
          ),
        ),

      ),
    );
  }

}