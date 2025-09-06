import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapce/home/home_screen.dart';

import '../home/elevated_button.dart';

class Login extends StatelessWidget{

  static const String routeNamed='Login';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/login_img.png',),fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor:Colors.transparent ,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Text('Explore\nThe\nUniverse',
                  style: TextStyle(color: Colors.white,fontSize: 48,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 350,),
              ElevatedButtonn(text: 'Explore',onButtonClick: (p0) {
                Navigator.of(context).pushNamed(HomeScreen.routeNamed);
              },)
            ],
                    ),
          ),
      ),
    )
    );
  }

}