import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textt extends StatelessWidget{
  String text;
  Textt({required this.text});
  @override
  Widget build(BuildContext context) {
   return Container(
     child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 5),
       child: Text(
         text,
         style: TextStyle(
           color: Colors.white,
           fontWeight: FontWeight.bold,
           fontSize: 16,
         ),
       ),
     ),
   );

  }

}