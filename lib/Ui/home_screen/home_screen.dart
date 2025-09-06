import 'package:flutter/material.dart';
import 'package:space_app/Ui/Widgets/custom_elevated_button.dart';

import '../../core/constants/routes.dart';
import '../../core/constants/strings.dart';
import '../../models/planet.dart';
import '../Widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  int index = 0;
  @override
  void initState() {
    super.initState();
    // The listener is used to detect changes in the page view's scroll position. When the user scrolls to a new page
    // 1- we need to check if the user has scrolled to a new page not fraction
    // pageController.page! % 1 == 0
    // 2- If it is, the state is updated to reflect the new page index.
    // what about % 9
    // 3- This is to ensure that the index wraps around when it reaches the end of the list.
    /*
      index = 0 -> 0 % 9 = 0
      index = 1 -> 1 % 9 = 1
      index = 2 -> 2 % 9 = 2
      index = 3 -> 3 % 9 = 3
      index = 4 -> 4 % 9 = 4
      index = 5 -> 5 % 9 = 5
      index = 6 -> 6 % 9 = 6
      index = 7 -> 7 % 9 = 7
      index = 8 -> 8 % 9 = 8
      index = 9 -> 9 % 9 = 0
    */
    pageController.addListener(
      () {
        if (pageController.page! % 1 == 0) {
          setState(() {
            index = pageController.page!.toInt() % Planet.planets.length;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(
            mainTitle: Strings.explore,
            subTitle: Strings.homeTitleQuestion,
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image.asset(Planet.planets[index % 9].image),
                );
              },
              itemCount: Planet.planets.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(shape: const CircleBorder()),
                    onPressed: () {
                      pageController.animateToPage(
                          pageController.page!.toInt() - 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.decelerate);
                    },
                    child: const Icon(Icons.arrow_back)),
                Text(
                  Planet.planets[index].name,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(shape: const CircleBorder()),
                    onPressed: () {
                      pageController.animateToPage(
                          pageController.page!.toInt() + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.decelerate);
                    },
                    child: const Icon(Icons.arrow_forward)),
              ],
            ),
          ),
          CustomElevatedButton(
              text: "Explore ${Planet.planets[index].name}",
              onpressed: () {
                Navigator.pushNamed(context, Routes.detailsRoute,
                    arguments: Planet.planets[index]);
              })
        ],
      ),
    );
  }
}
