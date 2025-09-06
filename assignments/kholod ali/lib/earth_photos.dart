import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EarthScreen extends StatelessWidget{
  List<Map<String, String>> planets =[
    {"name": "Earth", "image": "assets/images/earth 1.png"},
    {"name": "Mercury", "image": "assets/images/mercury.png"},
    {"name": "Jupiter", "image": "assets/images/jupiter.png"},
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.black,
     body: SafeArea(
         child:  Column(
           children: [
             Stack(
               children: [
                 Image.asset('assets/images/eback.png'),
                 Positioned(
                   top: 25,
                   left: 150,
                   child:   Center(
                     child: Text('explore',
                       style: TextStyle(
                         fontSize: 25,
                         color: Colors.white,
                         fontWeight: FontWeight.bold,
                       ),),
                   ),
                 ),
                 Positioned(
                   top: 180,
                     child: Text('Which Planet\n Would You Like To Explore ?',
                     style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold,
                       color: Colors.white,
                     ),)
                 )
               ],
             ),
          Expanded(
              child: PageView.builder(
                  itemCount: planets.length,
                itemBuilder: (context, index) {
                  final planet = planets[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height:30,),
                      Image.asset(
                        planet['image']!,
                        height:350,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {

                            },
                            icon: Icon(Icons.arrow_back, color: Colors.red, size: 30),
                          ),
                          SizedBox(width: 10),
                          Text(   planet['name']!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.arrow_forward, color: Colors.red, size: 30),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              )
          ),
             Container(
               padding:EdgeInsets.only(
                 left: 20,
                 right: 20,
               ),
               child: ElevatedButton(
                 onPressed: () {
                   Navigator.of(context).pushNamed('details');
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.red,
                   padding: EdgeInsets.symmetric(vertical: 20),
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(30),
                   ),
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text( '    explore now',
                       style: TextStyle(fontSize: 18, color: Colors.white),
                     ),
                     Icon(Icons.arrow_forward, color: Colors.white),
                   ],
                 ),
               ),
             ),
           ],
         ),
     )
   );
  }
}