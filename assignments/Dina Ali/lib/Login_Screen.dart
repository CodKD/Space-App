import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space/Earth.dart';
import 'package:space/app_colors.dart';

class LoginScreen extends StatelessWidget{
  static const routeName='login';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SafeArea(
     child: Scaffold(
       backgroundColor: Colors.black,
       body: Stack(
         children: [
           Image.asset('assets/images/loginbackground.png',width:double.infinity,height: double.infinity,),
           Container(
             alignment: AlignmentGeometry.centerLeft,
             child: Padding(
               padding: const EdgeInsets.only(left: 16),
               child: Text('Explore\nThe\nUniverse',style: TextStyle(color: AppColor().white,
               fontWeight: FontWeight.w900,fontSize: 48,fontFamily: 'Inter'),),
             ),
           ),
           Container(
             alignment: AlignmentGeometry.bottomCenter,
             child: SizedBox(width: 342,height: 60,
               child: ElevatedButton(onPressed: (){
                 Navigator.of(context).pushReplacementNamed(Earth.routeName);
               },
                 style:ElevatedButton.styleFrom(
                                      backgroundColor: AppColor().red,
                     shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(29),

                     )
                   ),
                   child:Row(
                     children: [
                       Text('Explore',style: TextStyle(
                           fontSize: 20,fontWeight: FontWeight.bold,
                       color:AppColor().white),textAlign: TextAlign.left,),
                       SizedBox(width:204 ,),
                       Icon(Icons.arrow_forward_sharp,color: AppColor().white,size: 22,)
                     ],
                   )),
             ),
           ),
         ],
       ),
     ),
   );
  }
}