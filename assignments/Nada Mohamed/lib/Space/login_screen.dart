import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/Space/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static String routename = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E0E),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset(
            "assets/images/login_image.png",
          )
          ,
          Text(
            "Explore\nThe Universe",
            style: TextStyle(
              fontSize: 48,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(HomeScreen.routename);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEE403D),
                ),
                child: Row(

                  children: [
                    Text("Explore",style: TextStyle( color: Colors.white,fontSize: 20),),
                    Spacer(),
                    Icon(Icons.arrow_forward,color: Colors.white,),
                  ],
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}