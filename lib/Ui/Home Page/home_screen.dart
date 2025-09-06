import 'package:flutter/material.dart';
import 'package:space_app/Ui/Home%20Page/widgets/custom_app_bar.dart';
import 'package:space_app/Ui/Lannding%20Page/widgets/custom_elevated_btn.dart';
import 'package:space_app/core/constants/routes.dart';
import 'package:space_app/core/constants/strings.dart';
import 'package:space_app/models/planet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int index = 0;

  @override
  void initState() {
    pageController.addListener(
      () {
        if (pageController.page! % 1 == 0) {
          setState(() {
            index = pageController.page!.toInt() % 9;
          });
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          spacing: 20,
          children: [
            const CustomAppBar(
              title: Strings.explore,
              details: Strings.homeTitleQuestion,
              // hasBtn: true,
            ),
            Expanded(
                child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset(Planet.planets[index % 9].image));
              },
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(shape: const CircleBorder()),
                    onPressed: () {
                      //TODO: navigate to the previous planet
                      pageController.animateToPage(
                          pageController.page!.toInt() - 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceInOut);
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
                      //TODO: navigate to the next planet
                      pageController.animateToPage(
                          pageController.page!.toInt() + 1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.bounceInOut);
                    },
                    child: const Icon(Icons.arrow_forward))
              ],
            ),
            CustomElevatedBtn(
              text: "Explore ${Planet.planets[index].name}",
              onPressed: () {
                //TODO Navigate to details screen with planet argument
                Navigator.of(context).pushNamed(Routes.detailsRoute,
                    arguments: Planet.planets[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
