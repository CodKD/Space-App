import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnButtomClick =void Function(String);

class ElevatedButtonn extends StatelessWidget{
  String text;
  OnButtomClick onButtonClick;
  ElevatedButtonn({required this.text,required this.onButtonClick});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:Color(0xFFEE403D),
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29)) ),onPressed: (){
            onButtonClick(text);
        },
            child:Row(
              children: [
                Expanded(child: Text(text,textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),)),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded,color: Colors.white))
              ],
            )
        ),
      ),
    );

  }

}