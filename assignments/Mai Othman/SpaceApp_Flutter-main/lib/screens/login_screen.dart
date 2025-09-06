import 'package:flutter/material.dart';
import 'package:space_app/elevated_button.dart';
import 'package:space_app/utilis/app_assets.dart';
import 'package:space_app/utilis/app_routes.dart';
import 'package:space_app/utilis/app_styles.dart';

import '../utilis/app_colors.dart';

class LoginScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.black),
      body: SafeArea(child:
      Stack(fit: StackFit.expand,alignment: Alignment.centerLeft, children: [
        Image.asset(AppAssets.loginScreen,fit: BoxFit.fill,)
      , Container( alignment: Alignment.centerLeft,
        child: Text("Explore \n The \n Universe",
          style: AppStyles.Bold48White,
        textAlign: TextAlign.center,
          ),
      ),
       ElevatedButtonDesign(text: 'Explore', myOnPressed:
           (){Navigator.of(context).pushNamed(AppRoutes.homeRouteName);}
         ,)
      ],
      )
      ),
    
    );
  }

}