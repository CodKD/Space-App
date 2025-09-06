import 'package:flutter/material.dart';
import 'package:space/pages/Home_Screen.dart';
import 'package:space/pages/main_button.dart';

class LoginScreen extends StatelessWidget{
  static const String routeName = 'Login_Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('assets/images/background-image.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 10,),
                Text('Explore The Universe',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 48,
                ),),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed(HomeScreen.routeName);
                  },
                  child: MainBtn(text: "Explore"),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

}