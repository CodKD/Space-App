import 'dart:ffi';
import 'package:contacts/Components/Button.dart';
import 'package:contacts/Components/PlanetsList%20.dart';
import 'package:contacts/Components/PlanetsImages.dart';
import 'package:contacts/Components/AboutPlanets.dart';
import 'package:contacts/Components/AllColors.dart';
import 'package:contacts/Components/ExplorecContainer.dart';
import 'package:contacts/Components/PlanetData.dart';
import 'package:contacts/Components/SelectedPlanet.dart';
import 'package:contacts/pages/AboutPage.dart';
import 'package:flutter/material.dart';

class Explorepage extends StatefulWidget {
  static const String RouteName = "explorepage";

  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
List<Planetdata> planetlist = PlanetsList.allPlanets;


  PageController _pageController = PageController();
  int _currentIndex = 0;

  void _nextPage() {
    if (_currentIndex < planetlist.length - 1) {
      _currentIndex++;
      _pageController.animateToPage(_currentIndex, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {});
    }
  }

  void _previousPage() {
    if (_currentIndex > 0) {
      _currentIndex--;
      _pageController.animateToPage(_currentIndex, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Allcolors.blackcolor,
      body: Column(
        children: [
          Explorecontaier(text1: "Explore", text2: "Which planet\nwould you like to explore?"),
          Expanded(
            child: Container(
              color: Allcolors.blackcolor,
              child: PageView.builder(
                physics: NeverScrollableScrollPhysics(),
                controller: _pageController,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(planetlist[index].planetimage, fit: BoxFit.fill, width: 280, height: 280),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: _previousPage,
                            child: Container(
                              width: 43,
                              height: 43,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Allcolors.Buttoncolor),
                              child: Icon(Icons.arrow_back, color: Allcolors.Textcolor),
                            ),
                          ),
                          Text(planetlist[index].planetname, style: TextStyle(color: Allcolors.Textcolor, fontSize: 24)),
                          InkWell(
                            onTap: _nextPage,
                            child: Container(
                              width: 43,
                              height: 43,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Allcolors.Buttoncolor),
                              child: Icon(Icons.arrow_forward, color: Allcolors.Textcolor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
                itemCount: planetlist.length,
              ),
            ),
          ),
          Button(
            text: 'Explore ${planetlist[_currentIndex].planetname}',
            onTap: () {
              Navigator.of(context).pushNamed(
                Aboutpage.RouteName,
                arguments: Selectedplanet(planet: planetlist[_currentIndex]), 
              );
            },
          ),
        ],
      ),
    );
  }
}