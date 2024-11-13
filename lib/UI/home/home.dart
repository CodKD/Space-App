import 'package:flutter/material.dart';
import 'package:space_app/UI/home/widgets/title_widget.dart';
import 'package:space_app/core/constants/routes.dart';
import 'package:space_app/core/constants/strings.dart';
import 'package:space_app/models/planet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController pageController = PageController(initialPage: 0);
  int index = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(_listenOnPageChange);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TitleWidget(),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(Planet.planets[(index % 9)].image),
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder()
                  ),
                  onPressed: () {
                    if(pageController.page!.toInt() == 0){
                      return;
                    }
                    pageController.animateToPage(
                      pageController.page!.toInt()-1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInSine,
                    );
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                Expanded(
                  child: Text(
                    Planet.planets[index].name,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder()
                  ),
                  onPressed: () {
                    pageController.animateToPage(
                      pageController.page!.toInt()+1,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInSine,
                    );
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, Routes.detailsRoute , arguments: Planet.planets[index]);
              },
              child: Row(
                children: [
                  Text("${Strings.explore} ${Planet.planets[index].name}"),
                  const Spacer(),
                  const Icon(Icons.arrow_forward),
                ],
              )
            ),
          )
        ],
      ),
    );
  }

  void _listenOnPageChange() {
    if (pageController.page! % 1 == 0) {
      setState(() {
        index = pageController.page!.toInt() % 9;
      });
    }
  }
}
