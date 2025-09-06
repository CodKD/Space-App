import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_images.dart';


class ScrollPart extends StatelessWidget{
  String img ;
  String text;

  ScrollPart({required this.img  ,required this.text });

  static const String routeName = "home";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //////////////

    return Container(
      width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(img),width: size.width*0.8, height: size.height*0.5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: AppColors.red,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_sharp, color: AppColors.white),
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: AppColors.red,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_sharp, color: AppColors.white),
                  ),
                ),
              ],
            ),
          ],
        ),);
  }

}