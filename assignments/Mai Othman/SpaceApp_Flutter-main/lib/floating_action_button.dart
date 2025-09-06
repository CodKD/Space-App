import 'package:flutter/material.dart';
import 'package:space_app/utilis/app_colors.dart';
import 'package:space_app/utilis/app_styles.dart';

class MyFloatingActionButton extends StatelessWidget{
  String tag;
  VoidCallback myOnPressed;
  IconData icon;
  MyFloatingActionButton({required this.tag, required this.myOnPressed, required this.icon});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(heroTag: tag, shape: AppStyles.floatingBtnStyle,backgroundColor: Color(AppColors.red),
        onPressed: myOnPressed,
        child: Icon(icon, color: Color(AppColors.white),),
      ),
    );
  }

}