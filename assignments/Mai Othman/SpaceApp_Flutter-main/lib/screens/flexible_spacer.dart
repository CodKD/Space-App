import 'package:flutter/material.dart';

import '../utilis/app_assets.dart';
import '../utilis/app_colors.dart';
import '../utilis/app_styles.dart';

class FlexibleSpacer extends StatelessWidget{
  String text;
  FlexibleSpacer({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO gradient to be modified
      decoration: BoxDecoration(gradient: LinearGradient(colors: [Color(AppColors.black), Color(AppColors.white)],
      ),
      ),
      child: Stack(fit: StackFit.expand,alignment: Alignment.bottomCenter,
        children: [Image.asset(AppAssets.exploreBG,
          alignment: Alignment.center, fit: BoxFit.fill,),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(text, style: AppStyles.bold24White, textAlign: TextAlign.center,),
          )
        ],),
    );
  }

}