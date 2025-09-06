import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';

class detailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.black,
     body: SingleChildScrollView(
       child: Stack(
         children: [
           Image(image: AssetImage(AppImages.topBackGround)),
           Container(
             height: 220,
             decoration: BoxDecoration(
                 gradient: LinearGradient(
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter,
                     colors: [AppColors.black, Colors.transparent ])
             ),
           ),
           Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                     Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                      color: AppColors.red,
                      ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.arrow_back_sharp, color: AppColors.white),
                        ),
                      ),
                        Expanded(
                       child: Center(
                         child: Text(
                           "Earth",
                           style: TextStyle(fontSize:24,fontWeight: FontWeight.w600,color: AppColors.white ),),
                       ),
                     ),
                       SizedBox(width: 48),
                   ],),
                   SizedBox(height: 40),
                   Text(
                     "Earth: Our Blue Marble",
                     style: TextStyle(fontSize:24,fontWeight: FontWeight.w600,color: AppColors.white ),),
                   SizedBox(height: 34),
                   Center(child: Image(image: AssetImage(AppImages.earth))),
                   SizedBox(height: 40),
                   Text(
                     "About",
                     style: TextStyle(fontSize:24,fontWeight: FontWeight.w600,color: AppColors.white ),),
                   SizedBox(height: 10),
                   Text(
                     "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
                     style: TextStyle(fontSize:18,fontWeight: FontWeight.w400,color: AppColors.white ),),
                   SizedBox(height: 20),
                   Text(
                     "Distance from Sun (km) : 149598026",
                     style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColors.white ),),
                   SizedBox(height: 10),
                   Text(
                     "Length of Day (hours) : 23.93",
                     style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColors.white ),),
                   SizedBox(height: 10),
                   Text(
                     "Length of Day (hours) : 23.93",
                     style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColors.white ),),
                   SizedBox(height: 10),
                   Text(
                     "Length of Day (hours) : 23.93",
                     style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColors.white ),),
                   SizedBox(height: 10),
                   Text(
                     "Length of Day (hours) : 23.93",
                     style: TextStyle(fontSize:18,fontWeight: FontWeight.w600,color: AppColors.white ),),
                 ],
               )
           ),
         ],
       ),
     ),
   );
  }

}