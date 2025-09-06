import 'package:flutter/material.dart';

import 'app_colors.dart';

class PlanetScreen extends StatelessWidget {
  String image;
  String name;
  String pop;
  String push;
  String explorepush;

  PlanetScreen({required this.image,required this.name,required this.pop,
    required this.push,required this.explorepush});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor().black,
          body: Stack(
              children: [
                Image.asset('assets/images/topbackground.png'),
                Image.asset('assets/images/gardient.png'),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 26),
                            child: Text('Explore', textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColor().white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Space Grotesk'),),
                          ),
                        ),
                        SizedBox(height: 76,),
                        Expanded(
                          child: Text(
                            'Which planet\nwould you like to explore?',
                            textAlign: TextAlign.left,
                            style: TextStyle(color: AppColor().white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Space Grotesk'),),
                        ),
                        Image.asset(
                          image, width: 342, height: 339,),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(onPressed: () {
                                Navigator.of(context).pushReplacementNamed(pop);
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor().red,
                                      shape: CircleBorder()),
                                  child: Icon(
                                    Icons.arrow_back_sharp, color: AppColor()
                                      .white, size: 22,)),
                              Text(name, style: TextStyle(color: AppColor()
                                  .white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Space Grotesk'),),
                              ElevatedButton(onPressed: () {
                                Navigator.of(context).pushReplacementNamed(push);

                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor().red,
                                      shape: CircleBorder()),
                                  child: Icon(
                                    Icons.arrow_forward_sharp, color: AppColor()
                                      .white, size: 22,))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: AlignmentGeometry.bottomCenter,
                            child: SizedBox(width: 342, height: 60,
                              child: ElevatedButton(onPressed: () {
                                Navigator.of(context).pushReplacementNamed(explorepush);
                              },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColor().red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry
                                            .circular(29),
                                      )
                                  ),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Explore $name', style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor().white),
                                          textAlign: TextAlign.left,),
                                        Icon(Icons.arrow_forward_sharp,
                                          color: AppColor().white, size: 22,)
                                      ],
                                    ),
                                  )),
                            ),
                          ),

                      ],
                    )
                ),
              ]
          )
      ),
    );
  }
}