import 'package:flutter/material.dart';
import 'package:spaceapp/planetPage/discover_planets.dart';

class SpaceHome extends StatefulWidget {
  const SpaceHome({super.key});
  static String routeName = "SpaceHome";

  @override
  State<SpaceHome> createState() => _SpaceHomeState();
}

class _SpaceHomeState extends State<SpaceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF0E0E0E),
        body: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "assets/models/background.png",
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        children: [
                          const Text(
                            "Explore\nThe\nUniverse",
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed(
                                DiscoverPlanetsScreen.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE403D),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            elevation: 8,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Explore",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(width: 20),
                              Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
