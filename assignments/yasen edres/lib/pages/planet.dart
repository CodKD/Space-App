import 'package:flutter/material.dart';
import 'package:space/pages/about_screen.dart';
import 'package:space/pages/main_button.dart';
import 'package:space/model/planet_args.dart';
import 'package:space/model/planet_data.dart';
typedef  onbuttonClick = void Function();
class Planet extends StatelessWidget{
  List<PlanetData> plants = [
    PlanetData(radius: '6371',
        aboutDetails: 'Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth'
            's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
        distanceOfSun: '149598026',
        gravity: '9.81',
        lengthOfDay: '23.93',
        mass: '5.972 × 10²⁴',
        nickName: 'Our Blue Marble',
        orbitalPeriod: '1',
        surfaceArea: '5.10 × 10⁸',
        planetName:'Earth' ),
    PlanetData(radius: '2,439.7',
        aboutDetails: 'Mercury is the closest planet to the Sun and the smallest in the solar system. It has a rocky surface covered with craters and has no atmosphere to protect it from solar radiation or meteoroids. Despite its proximity to the Sun, it’s not the hottest planet.',
        distanceOfSun: '57,909,227',
        gravity: '3.7',
        lengthOfDay: '1,407.6',
        mass: '3.301 × 10²³',
        nickName: 'The Swift Planet',
        orbitalPeriod: '0.24',
        surfaceArea: '7.48 × 10⁷',
        planetName:'Mercury' ),
    PlanetData(radius: '69,911',
        aboutDetails: 'Jupiter is the largest planet in our solar system. Known for its massive size and powerful storms, including the Great Red Spot, Jupiter is a gas giant composed mainly of hydrogen and helium. It has a strong magnetic field and dozens of moons, including the largest moon in the solar system, Ganymede.',
        distanceOfSun: '778,340,821',
        gravity: '24.79',
        lengthOfDay: ' 9.93',
        mass: '1.898 × 10²⁷',
        nickName: 'The Gas Giant',
        orbitalPeriod: ' 11.86',
        surfaceArea: '6.14 × 10¹⁰',
        planetName:'Jupiter' ),
    PlanetData(radius: '3,390',
        aboutDetails: 'Mars is the fourth planet from the Sun and is often called the “Red Planet” due to its reddish appearance caused by iron oxide (rust) on its surface. It has the largest volcano and the deepest canyon in the solar system. Scientists believe Mars once had liquid water and may have supported microbial life.',
        distanceOfSun: '227,943,824',
        gravity: '3.71',
        lengthOfDay: ' 24.62',
        mass: '6.417 × 10²³',
        nickName: 'The Red Planet',
        orbitalPeriod: ' 1.88',
        surfaceArea: '1.44 × 10⁸',
        planetName:'Mars' ),
    PlanetData(radius: '24,622',
        aboutDetails: 'Neptune is the farthest known planet from the Sun. It’s a cold, dark, and windy ice giant with supersonic winds and deep blue color due to methane in its atmosphere.',
        distanceOfSun: '4,498,396,441',
        gravity: '11.15',
        lengthOfDay: ' 16.11',
        mass: '1.024 × 10²⁶',
        nickName: 'The Windy Planet',
        orbitalPeriod: '164.8',
        surfaceArea: '7.64 × 10⁹',
        planetName:'Neptune' ),
    PlanetData(radius: '58,232',
        aboutDetails: 'Saturn is the second-largest planet in the solar system and is known for its magnificent ring system. It’s a gas giant primarily composed of hydrogen and helium.',
        distanceOfSun: '1,426,666,422',
        gravity: '10.44',
        lengthOfDay: '10.7',
        mass: '5.683 × 10²⁶',
        nickName: 'The Ringed Planet',
        orbitalPeriod: '29.5',
        surfaceArea: '4.27 × 10¹⁰',
        planetName:'Saturn' ),
    PlanetData(radius: '696,340',
        aboutDetails: 'The Sun is the star at the center of the solar system. It is a nearly perfect sphere of hot plasma that provides light and heat to the planets. It contains more than 99.8% of the total mass of the entire solar system.',
        distanceOfSun: '0',
        gravity: '274',
        lengthOfDay: '~609.12 (25.38 Earth days)',
        mass: '1.989 × 10³⁰',
        nickName: 'The Star of Our System',
        orbitalPeriod: 'Not applicable',
        surfaceArea: '6.09 × 10¹²',
        planetName:'Sun' ),
    PlanetData(radius: '25,362',
        aboutDetails: 'Uranus is an ice giant with a pale blue color due to methane in its atmosphere. It has a unique tilt that causes it to rotate on its side compared to other planets.',
        distanceOfSun: '2,870,658,186',
        gravity: '8.69',
        lengthOfDay: '17.24',
        mass: '8.681 × 10²⁵',
        nickName: 'The Tilted Planet',
        orbitalPeriod: '84',
        surfaceArea: '8.12 × 10⁹',
        planetName:'Uranus' ),
    PlanetData(radius: '6,051.8',
        aboutDetails: 'Venus is similar in size and composition to Earth but has a thick, toxic atmosphere of carbon dioxide and sulfuric acid clouds, making it the hottest planet in the solar system.',
        distanceOfSun: '108,209,475',
        gravity: '8.87',
        lengthOfDay: '5,832',
        mass: '4.867 × 10²⁴',
        nickName: 'The Hottest Planet',
        orbitalPeriod: '0.62',
        surfaceArea: '4.6 × 10⁸',
        planetName:'Venus' ),

  ];
  onbuttonClick toBack;
  onbuttonClick toForward;
  String planetName;
  Planet({required this.planetName,
   required this.toBack,
   required this.toForward});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 180,),
          Image.asset('assets/images/$planetName.png',
          width: 342,
          height: 339,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      toBack();
                    },
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Color(0xFFEE403D),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_back,
                        color: Colors.white,),
                    ),
                  ),
                  Text(planetName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.w700,
                      fontSize: 24,
                    ),),
                  InkWell(
                    onTap: (){
                      toForward();
                    },
                    child: Container(
                      padding: EdgeInsets.all(13),
                      decoration: BoxDecoration(
                        color: Color(0xFFEE403D),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_forward,
                        color: Colors.white,),
                    ),
                  ),
                ],),
              SizedBox(height: 40,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(AboutScreen.routeName,
                  arguments: PlanetArgs(planetName: planetName, plantList: plants)
                  );
                },
                  child: MainBtn(text: "Explore $planetName")
              ),
            ],
          ),
        ],
      ),
    );
  }

}