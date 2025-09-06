import 'package:flutter/material.dart';
import 'package:task3/Space/spaces.dart';

class HomeScreen extends StatelessWidget {
  static String routename = 'home';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0E0E0E),
        body: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/background_image.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Image.asset(
                    "assets/images/gradient_image.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "Explore",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Which planet\nwould you like to explore?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
   Expanded(child: Container(
     child: Spaces(),
   ))
          ],
        ),
      ),
    );
  }
}
