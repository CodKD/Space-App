import 'package:flutter/material.dart';
import 'package:space_app/utilis/app_colors.dart';
import 'package:space_app/utilis/app_styles.dart';

class ElevatedButtonDesign extends StatelessWidget{
  String text;
  VoidCallback myOnPressed;
  ElevatedButtonDesign({required this.text, required this.myOnPressed});
  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsetsGeometry.symmetric(vertical: 1, horizontal: 8),

      child: ElevatedButton(
          onPressed:
            myOnPressed,
          style: ElevatedButton.styleFrom(backgroundColor: Color(AppColors.red))
          , child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(text, style: AppStyles.bold20White,),
                  Icon(Icons.arrow_forward, color: Color(AppColors.white),
                  ),
                ]
            ),
          )
      ),
    );
  }

}