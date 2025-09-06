import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sapce/home/model/planet.dart';

import '../Planet Details/planet_details.dart';
import 'elevated_button.dart';

class HomeScreen extends StatefulWidget {
  static const String routeNamed = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   PageController _pageController = PageController();

  int _currentPage = 0;

   List<Planet> planets = [
    Planet(name: "Earth", image: "assets/images/earth1.png"),
    Planet(name: "Jupiter", image: "assets/images/jupiter.png"),
    Planet(name: "Mars", image: "assets/images/mars.png"),
    Planet(name: "Mercury", image: "assets/images/mercury.png"),
    Planet(name: "Neptune", image: "assets/images/neptune.png"),
    Planet(name: "Saturn", image: "assets/images/saturn.png"),
    Planet(name: "Sun", image: "assets/images/sun.png"),
    Planet(name: "Uranus", image: "assets/images/uranus.png"),
    Planet(name: "Venus", image: "assets/images/venus.png"),
  ];

  void _nextPage() {
    if (_currentPage < planets.length - 1) {        //if 0<8  ture next
      _pageController.nextPage(
          duration: Duration(milliseconds: 150), curve: Curves.easeInOut);
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
          duration: Duration(milliseconds: 150), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
              toolbarHeight: 237,
              backgroundColor: Colors.black,
              flexibleSpace: Stack(fit: StackFit.expand, children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.1),
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Image.asset(
                    "assets/images/appbar.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: Text(
                        "Explore",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 110,
                  ),
                  Text(
                    "Which planet\nwould you like to explore?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ])),
          body: PageView.builder(
            controller: _pageController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: planets.length,
            itemBuilder: (context, index) {
              var planet = planets[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(planet.image),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                          onPressed: _prevPage,
                          icon: Image.asset('assets/images/buttomred.png')),
                      Expanded(
                          child: Text(
                            planet.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                      IconButton(
                          onPressed: _nextPage,
                          icon: Image.asset('assets/images/rightbuttom.png')),
                    ],
                  ),
                  SizedBox(height: 50),
                  ElevatedButtonn(
                    text: 'Explore ${planet.name}',
                    onButtonClick: (p0) {
                      Navigator.of(context).pushNamed(PlanetDetails.routeNamed);
                    },
                  ),
                ],
              );
            },
          ),
        ));
  }
}
