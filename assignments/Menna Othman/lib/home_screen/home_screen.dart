import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/home_screen/scroll_part.dart';
import 'package:space_app/utils/app_colors.dart';
import 'package:space_app/utils/app_images.dart';
import 'package:space_app/utils/app_routs.dart';
import 'package:space_app/utils/data_class_home_screen.dart';

class Home extends StatelessWidget{

  List <ImageTextInHomeScreen> imageTextInHomeScreen =[
    ImageTextInHomeScreen(img: AppImages.mars, text: "Mars"),
    ImageTextInHomeScreen(img: AppImages.jupiter, text: "Jupiter"),
  ];


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.black,
     body: Stack(
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
               Align(
                 alignment: Alignment.topCenter,
                 child: Text(
                   "Explore",
                   style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: AppColors.white ),),
               ),
               SizedBox(height: 40),
               Text(
                 "Which planet \nwould you like to explore?",
                 style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,color: AppColors.white ),),
               SizedBox(height: 32),
               SizedBox(
                 height: 500,
                 child: ListView.builder(
                   itemBuilder: builtInHomeScreenScroll,
                   itemCount:imageTextInHomeScreen.length,
                   scrollDirection: Axis.horizontal,
                   physics: ScrollPhysics(),
                 ),
               ),
                  Spacer(),
                  Container(
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
                         IconButton(onPressed: (){Navigator.of(context).pushNamed(routsName.detailsScreen);},
                             icon: Icon(Icons.arrow_forward_sharp,color: AppColors.white,) )
                       ],
                     ),
                   ),
                 ),
             ],
           )
         ),
       ],
     ),
   );
  }
ScrollPart builtInHomeScreenScroll (BuildContext context ,int index){
    return ScrollPart(img: imageTextInHomeScreen[index].img, text: imageTextInHomeScreen[index].text);
}
}