import 'package:flutter/material.dart';
import 'package:space_app/pages/planetInfoScreen.dart';
import 'package:space_app/pages/widgets/exploreButton.dart';
import 'package:space_app/pages/widgets/swipeArrowButton.dart';
import 'package:space_app/pages/widgets/topAppBar.dart';
import '/core/assets/usedColors.dart';
import '../solarDescriptions/PlanetsDescription.dart';

class HomeScreen extends StatefulWidget{
  static String routeName='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  late PageController _pageController;
  bool isSwipeRight = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: index,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(237),
        child: TopAppBar(
          title: 'Explore',
          description: 'Which planet\nwould you like to explore?',
        ),
      ),
      backgroundColor: UsedColor.blackColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //image and transition
          Expanded(
          child: PageView.builder(
          controller: _pageController,
            itemCount: PlanetsDescription.planetsList.length,
            onPageChanged: (newIndex) {
              setState(() {index = newIndex;});
            },
            itemBuilder: (context, i) {
              return Image.asset(PlanetsDescription.planetsList[i].model, width: double.infinity,
                height: double.infinity, fit: BoxFit.contain,);
              },
            ),
          ),
          //swipe bar
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SwipeButton(onClick: onLeftClick,),
                  Text(PlanetsDescription.planetsList[index].name,
                    style: TextStyle(
                      color: UsedColor.whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SwipeButton(rightDirection: true,onClick: onRightClick,),
                ],
              ),
            ),
          //explore planet...
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 35),
            child: ExploreButton(planetName: PlanetsDescription.planetsList[index].name,onClick: () =>
              Navigator.pushNamed(context, PlanetInfoScreen.routeName, arguments: index))
          ),
        ],
      ),
    );
  }

  int onRightClick(){
    isSwipeRight=true;
    if(index != PlanetsDescription.planetsList.length-1) {
      index++;
    }else{
      index=0;
      _pageController.jumpToPage(index);
    }
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 400), curve: Curves.easeOut);
    setState(() {

    });
    return index;
  }

  int onLeftClick(){
    isSwipeRight=false;
    if (index!=0) {
      index--;
    }else{
      index = PlanetsDescription.planetsList.length-1;
      _pageController.jumpToPage(index);
    }
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 400), curve: Curves.easeOut);
    setState(() {

    });
    return index;
  }
}