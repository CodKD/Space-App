import 'package:flutter/material.dart';

class MainBtn extends StatelessWidget{
  String text;
  MainBtn({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      height: 60,
      decoration:BoxDecoration(
        color: Color(0xFFEE403D),
        borderRadius: BorderRadius.circular(29),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),),
            Icon(Icons.arrow_forward,
              color: Colors.white,),
          ],
        ),
      ),
    );
  }

}