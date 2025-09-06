import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space2/planetdetailsscreen.dart';

import 'buttonclick.dart';

final List<String> images = [
  "assets/sun.png",
  "assets/mercury.png",
  "assets/venus.png",
  "assets/earth.png",
  "assets/mars.png",
  "assets/jupiter.png",
  "assets/uranus.png",
  "assets/neptune.png",



];

final List<String> planetname = [
  "sun",
  "mercury",
  "venus",
  "earth",
  "mars",
  "jupiter",
  "uranus ",
  "neptune",

];

final List<String> planetTitle = [
  "sun : Our Solar System's Star",
  "mercury : The Closest Planet",
  "venus : Earth's Toxic Twin",
  "earth : Our Blue Marble",
  "mars : The Red Planet",
  "jupiter : The Ringed Planet",
  "uranus : The Tilted Planet",
  "neptune : The Distant World",


];


int index = 0;

class Spacescreen extends StatefulWidget {
  const Spacescreen({super.key});

  static String Routename = 'spacescreen';

  @override
  State<Spacescreen> createState() => _SpacescreenState();
}

class _SpacescreenState extends State<Spacescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image(
                  width: double.infinity,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/back.png'),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image(image: AssetImage(images[index])),
                  Spacer(),
                  Row(
                    children: [
                      Buttonclick(onButtonClick: () {
                        if (index <= images.length-1 && index>0) {
                          index--;
                        }
                        if(index==images.length)
                        {
                          index=0;
                        }
                        setState(() {

                        });
                      }, icon: Icons.arrow_back),


                      Spacer(),
                      Text(
                        planetname[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Buttonclick(
                        onButtonClick: () {
                          if (index < images.length-1) {
                            index++;
                          }
                         else if(index==images.length)
                            {
                              index==0;
                            }
                          setState(() {

                          });
                        },
                        icon: Icons.arrow_forward_outlined,
                      ),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red),
                    ),
                    onPressed: () {

                      Navigator.of(context).pushNamed(Planetdetailsscreen.Routename);

                    },
                    child: Row(
                      children: [
                        Text(
                          'Explore ${planetname[index]}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(
                          color: Colors.white,
                          size: 20,
                          Icons.arrow_forward_outlined,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

 
