import 'package:assignment_3_space/home/home_screen_two.dart';
import 'package:assignment_3_space/home/planet_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class homeScreenOne extends StatelessWidget{
  final PageController _pageController = PageController();
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xff0E0E0E),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/Rectangle 4.png'),
              Positioned(
                top: 40,
                    left: 170,
                    child: Text('Explore',style: TextStyle(
                      color: Color(0xffffffff),fontSize: 30,fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
              Positioned(
                    bottom: 20,
                  child: Text('  Which planet\n  would you like to explore?',
                    style: TextStyle(
                      color: Color(0xffffffff),fontSize: 25,fontWeight: FontWeight.bold)
                  )
              )
            ],
          ),
          Expanded(
            child: ValueListenableBuilder<int>(
              valueListenable: _currentPage,
              builder: (context, value, _) {
                return PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _currentPage.value = index;
                  },
                  itemCount: Planets.length,
                  itemBuilder: (context, index) {
                    final planet = Planets[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          planet.image,
                          height: 420,
                          width: 420,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                if (index > 0) {
                                  _pageController.previousPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Color(0xffEE403D),
                                child: const Icon(Icons.arrow_back,
                                    color: Colors.white, size: 20),
                              ),
                            ),
                            const SizedBox(width: 120),
                            Text(
                              planet.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 120),
                            InkWell(
                              onTap: () {
                                if (index < Planets.length - 1) {
                                  _pageController.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: CircleAvatar(
                                radius: 22,
                                backgroundColor: Color(0xffEE403D),
                                child: const Icon(Icons.arrow_forward_outlined,
                                    color: Colors.white, size: 20),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 120),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffEE403D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 15),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => homeScreenTwo(planet: planet,))
                            );
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Explore ${planet.name}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              const SizedBox(width: 160),
                              const Icon(Icons.arrow_forward,color: Color(0xffffffff),),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}