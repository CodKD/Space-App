import 'package:contacts/Components/Button.dart';
import 'package:contacts/Components/AllColors.dart';
import 'package:contacts/pages/ExplorePage.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  static const String RouteName = "firstpage";

  Widget build(BuildContext context) {
    return Scaffold(
    
  body: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/Login.png",) ,
        fit: BoxFit.fill,
      
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:  CrossAxisAlignment.stretch,
        children: [
            SizedBox(height:110),
          Text("Explore\nThe\nUniverse ", style: TextStyle(color: Colors.white, fontSize: 40,fontWeight: FontWeight.w900)),
          SizedBox(height: 240),
           Button(text: 'explore', onTap: () { Navigator.of(context).pushNamed(Explorepage.RouteName);}, )
      
        ]
      ),
    ),
  ),
 );

    
  }
}
    

