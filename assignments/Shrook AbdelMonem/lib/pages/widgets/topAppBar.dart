import 'package:flutter/material.dart';
import 'package:space_app/core/assets/usedAssets.dart';
import 'package:space_app/pages/homeScreen.dart';
import 'package:space_app/pages/widgets/swipeArrowButton.dart';
import '/core/assets/usedColors.dart';

class TopAppBar extends StatelessWidget{
 bool enableLeading;
 String title;
 String description;
 TopAppBar({this.enableLeading=false,
   required this.title,required this.description});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(UsedAssets.appBarPlanet,width: double.infinity,fit: BoxFit.cover,),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  UsedColor.blackColor,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16,right: 16, bottom: 30),
                  alignment: Alignment.bottomLeft,
                  child: Text(description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          automaticallyImplyLeading: false,
          leading: (enableLeading)?Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: SwipeButton(onClick: () {
                if (ModalRoute.of(context)?.settings.name != HomeScreen.routeName) {
                Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                }
              }
            ),
          ):null,
          leadingWidth: 80,
        ),
      ],
    );
  }
}
