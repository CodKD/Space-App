import 'package:flutter/material.dart';

import '../utilis/app_styles.dart';

class AppBarBottom extends StatelessWidget{
  String text;
  AppBarBottom({required this.text});
  @override
  Widget build(BuildContext context) {
    return  Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 8),
        child: Text(text,
            style: AppStyles.bold24White,
            textAlign: TextAlign.left
        ),
    );
  }

}