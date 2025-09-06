import 'package:flutter/material.dart';
import 'package:space_app/elevated_button.dart';
import 'package:space_app/floating_action_button.dart';
import 'package:space_app/model/planet.dart';
import 'package:space_app/screens/app_bar_bottom.dart';
import 'package:space_app/screens/flexible_spacer.dart';
import 'package:space_app/utilis/app_assets.dart';
import 'package:space_app/utilis/app_routes.dart';
import 'package:space_app/utilis/app_styles.dart';

import '../utilis/app_colors.dart';

class HomeScreen extends StatefulWidget{
  List<Planet> planetList= [
    Planet(image: AppAssets.earth, name: 'Earth'),
    Planet(image: AppAssets.jupiter, name: 'Jupiter'),
    Planet(image: AppAssets.mars, name: 'Mars'),
    Planet(image: AppAssets.mercury, name: 'Mercury'),
    Planet(image: AppAssets.neptune, name: 'Neptune'),
    Planet(image: AppAssets.saturn, name: 'Saturn'),
    Planet(image: AppAssets.sun, name: 'Sun'),
    Planet(image: AppAssets.uranus, name: 'Uranus'),
    Planet(image: AppAssets.venus, name: 'Venus'),
  ];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.black),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: FlexibleSpacer(text: 'Explore'),
        bottom: PreferredSize(preferredSize: Size.fromHeight(72),
    child: AppBarBottom(text: "Which planet \n would you like to explore ?"))
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Image.asset(widget.planetList[index].image),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
         MyFloatingActionButton(tag: 'btn1', myOnPressed: backFunction, icon: Icons.arrow_back_outlined)
          , Text(widget.planetList[index].name, style: AppStyles.bold24White ),
         MyFloatingActionButton(tag: 'btn2',myOnPressed: forwardFunction,
           icon: Icons.arrow_forward,)
        ],),
      ),
      ElevatedButtonDesign(text: 'Explore ${widget.planetList[index].name}',
        myOnPressed: ()=>Navigator.of(context).pushNamed(AppRoutes.detailsRouteName))
     ] ),
    );
  }

  void backFunction() {
    if(index == 0) return;
    else {
      setState(() {
        index--;
      });
    }
  }

  void forwardFunction() {
    if (index == widget.planetList.length-1) return;
    else{
      setState(() {
        index++;
      });
    }
  }
}