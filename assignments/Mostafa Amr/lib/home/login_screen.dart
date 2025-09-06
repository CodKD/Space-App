import 'package:assignment_3_space/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body:Stack(
        children: [
          Positioned.fill(child: Image.asset('assets/images/Frame 1.png',)
          ),
          Center(
            child: Text('Explore The Universe ',style: TextStyle(
              fontSize: 58,
              fontWeight: FontWeight.bold,
              color: Color(0xffffffff)
            ),
            ),
          ),
          Spacer(),
         Align(
           alignment: Alignment.bottomCenter,
           child: Padding(padding: EdgeInsets.all(20),
           child: SizedBox(width: double.infinity,
             child:ElevatedButton.icon( style:ElevatedButton.styleFrom(backgroundColor: Color(0xffEE403D),
                 padding:EdgeInsets.symmetric(vertical: 15),
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
             ),
             ),
                 onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => homeScreenOne()),
               );
                 },
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('     Explore',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      color: Color(0xffffffff),
                    ),),
                    Icon(Icons.arrow_right_alt,size: 30,color: Color(0xffffffff),),

                  ],
                ),
    )
           )
           ),
         )
       ]
      )
    );
  }
}