import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/utils/app_colors.dart';
import 'package:space_app/utils/app_images.dart';
import 'package:space_app/utils/app_routs.dart';

class firstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       color: AppColors.black,
       child: Stack(
           children: [
             Positioned.fill(
               child: Image(image: AssetImage(AppImages.welcomeImage),
                  width: double.infinity,
                  fit: BoxFit.cover,),
             ),
             Align(
               alignment: Alignment.centerLeft,
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   textAlign: TextAlign.left,
                   "Explore \nThe \nUniverse ",
                   style: TextStyle(fontWeight:FontWeight.w900,color: AppColors.white,fontSize: 48) ,),
               ),
             ),
             Positioned(
               left: 16,
               right: 16,
               bottom: 16,
               child: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(29),
                   color: AppColors.red,
                 ),
                 width: double.infinity,
                 child: Padding(
                   padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Explore",
                         style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: AppColors.white ),
                       ),
                       IconButton(onPressed: (){Navigator.of(context).pushNamed(routsName.HomeScreen);},
                           icon: Icon(Icons.arrow_forward_sharp,color: AppColors.white,) )
                     ],
                   ),
                 ),
               ),
             )
           ],
         ),
       ),
   );
  }

}