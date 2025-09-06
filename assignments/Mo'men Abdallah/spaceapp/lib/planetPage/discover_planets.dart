import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:spaceapp/planetDetails/planet_details.dart';
import 'package:spaceapp/planetDetails/planet_list.dart';
import 'package:spaceapp/planetPage/planets.dart';

class DiscoverPlanetsScreen extends StatefulWidget {
  DiscoverPlanetsScreen({super.key});
  static const String routeName = "DiscoverPlanets";

  @override
  State<DiscoverPlanetsScreen> createState() => _DiscoverPlanetsScreenState();
}

class _DiscoverPlanetsScreenState extends State<DiscoverPlanetsScreen> {
  int currentIndex = 0;
  PageController pageController = PageController();

  List<Planets> models = PlanetsData.getPlanets();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body: Stack(
        children: [
          Image.asset(
            "assets/models/topScreen.png",
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Explore",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Which planet \nwould you like to explore?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 300,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: models.length,
                        onPageChanged: (index) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        itemBuilder: (context, i) {
                          return InteractiveViewer(
                            scaleEnabled: true,
                            scaleFactor: 150,
                            panEnabled: true,
                            child: ModelViewer(
                              key: Key('discover_model_${models[i].name}_$i'),
                              src: models[i].imagePath,
                              autoRotate: true,
                              alt: "3D model of ${models[i].name}",
                              cameraControls: true,
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton(
                        heroTag: "back_button",
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: Color(0xffEE403D),
                        onPressed: () {
                          if (currentIndex > 0) {
                            pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "${models[currentIndex].name}",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      FloatingActionButton(
                        heroTag: "forward_button",
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        backgroundColor: Color(0xffEE403D),
                        onPressed: () {
                          if (currentIndex < models.length - 1) {
                            pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Planets currentPlanet = models[currentIndex];
                        print("Exploring: ${currentPlanet.name}");

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PlanetDetailsScreen(
                              planet: currentPlanet,
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEE403D),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Explore ${models[currentIndex].name}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 130),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
