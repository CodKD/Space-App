
import 'package:flutter/material.dart';

class HotelName extends StatelessWidget{
  String name;
  double paddingVertical ;
  double radius;
  HotelName({required this.name, this.paddingVertical =8 , this.radius= 40});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: paddingVertical),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: Color(0xFF024383),
      ),
      child:Text(name,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),
      ) ,
    );




  }

}