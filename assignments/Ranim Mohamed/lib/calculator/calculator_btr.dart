import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
typedef OnBtnClick = void Function(String);

class CalculatorButton extends StatelessWidget{
  String text;
  Color textColor;
  Color backgroundColor;
  int flex;
  bool IsIcon;
  OnBtnClick onBtnClick;


  CalculatorButton({required this.text,
    this.textColor = AppColors.lightBlueColor,
  this.backgroundColor=AppColors.darkGrayColor,
  this.flex=1,
  this.IsIcon=false,
  required this.onBtnClick});

  @override
  Widget build(BuildContext context) {
   return Expanded(
     flex:flex ,
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: FloatingActionButton(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
           backgroundColor: backgroundColor,
           onPressed: (){
             onBtnClick(text);
           },

              child:
                  IsIcon ?
                      Icon(Icons.backspace_outlined,
                      size: 25,
                      color: AppColors.lightGrayColor ,)
                  :
              Text(text,
         style: TextStyle(
           color: textColor,
           fontSize: 32,
           fontWeight: FontWeight.w500

              ),),),
       ));

  }

}