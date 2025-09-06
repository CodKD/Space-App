import 'package:flutter/material.dart';
import 'package:space_app/Planets.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 2;

  final List<Map<String, String>> planets = [
    {
      'name': 'Mercury',
      'image': 'assets/images/mercury.png',
      'description': 'Mercury is the closest planet to the Sun and the smallest planet in our solar'
          ' system. Its surface is rocky and covered with craters, cliffs, and plains created by impacts and'
          ' volcanic activity billions of years ago. Because Mercury has almost no atmosphere, it cannot retain heat,'
          ' which makes its surface temperatures extremely variable: daytime temperatures can reach 430°C (800°F), '
          'while nighttime temperatures can drop to -180°C (-290°F). Mercury rotates very slowly; one day on Mercury'
          ' lasts about 59 Earth days, while its year lasts only 88 Earth days. The planet has a weak magnetic field'
          ' and a small iron-rich core,'
          ' which scientists study to understand the formation of rocky planets.',
      'identity':'Mercury – The Swift Planet'
    },
    {
      'name': 'Venus',
      'image': 'assets/images/uranus.png',
      'description': 'Venus is the second planet from the Sun and is similar in size and composition'
          ' to Earth. However, it has a thick, toxic atmosphere made mostly of carbon dioxide, with clouds of '
          'sulfuric acid. This atmosphere creates a runaway greenhouse effect, making Venus the hottest planet in the '
          'solar system, with surface temperatures averaging around 465°C (869°F). Venus rotates slowly and in a '
          'retrograde direction, meaning it spins backward compared to most other planets. Its surface features '
          'mountains, volcanoes, and large plains, including the vast highland region called Ishtar Terra. Venus is '
          'sometimes called Earth’s'
          ' twin due to its similar size, but its extreme conditions make it uninhabitable.',
    'identity':'Venus – The Morning Star'
    },
    {
      'name': 'Earth',
      'image': 'assets/images/earth.png',
      'description': 'Earth is the third planet from the Sun and the only known planet to support life.'
          ' About 71% of its surface is covered by oceans, lakes, and rivers, while the remaining 29% consists of '
          'continents, mountains, deserts, and forests. Earth has a protective atmosphere that shields life from '
          'harmful solar radiation and maintains a stable climate. Its rotation causes day and night, while its axial'
          ' tilt creates the seasons. Earth has one natural satellite, the Moon, which affects tides and stabilizes'
          ' the planet’s rotation. The planet’s biosphere is diverse, hosting millions of species, from microscopic'
          ' organisms to large mammals,'
          ' and human civilization continues to explore and understand its natural wonders.',
      'identity':'Earth – The Blue Planet'

    },
    {
      'name': 'Mars',
      'image': 'assets/images/mars.png',
      'description': 'Mars, the Red Planet, is the'
          ' fourth planet from the Sun. Its reddish color is due to iron oxide (rust) '
          'on its surface. Mars has a thin atmosphere mostly composed of carbon dioxide, which cannot retain heat '
          'efficiently, resulting in cold temperatures averaging around -60°C (-80°F). The planet features vast '
          'deserts, canyons, and volcanoes, including Olympus Mons, the tallest volcano in the solar system. '
          'Mars also has polar ice caps made of water and dry ice (frozen carbon dioxide). The planet experiences '
          'dust storms that can last for months. Scientists are intensely studying Mars with rovers '
          'and orbiters to search for signs of past water and potential microbial life..',
      'identity':'Mars – The Red Planet'
    },
    {
      'name': 'Jupiter',
      'image': 'assets/images/jupiter.png',
      'description': 'Jupiter is the largest planet in the solar system and a gas giant made mostly of hydrogen and '
          'helium. Its immense size gives it a powerful gravitational field, influencing many objects in the solar'
          ' system, including comets and asteroids. Jupiter is famous for the Great Red Spot, a giant storm larger than Earth that has persisted for centuries. The planet has a complex system of rings and over 90 moons, including the four large Galilean moons: Io, Europa, Ganymede, and Callisto. Its atmosphere is characterized by colorful bands of clouds, strong winds, '
          'and lightning storms. Jupiter plays a key role in protecting the inner planets from frequent asteroid '
          'llisions.',
      'identity':'Jupiter – The Gas Giant'

    },
    {
      'name': 'Neptune',
      'image': 'assets/images/neptune.png',
      'description': 'Neptune is the eighth planet from the Sun and a distant ice giant. Its '
          'striking blue color comes from methane in the atmosphere, which absorbs red light. Neptune is extremely '
          'cold, with surface temperatures averaging -214°C (-353°F). It experiences the fastest winds in the solar'
          ' system, reaching up to 2,100 km/h (1,300 mph), creating massive storms and cloud formations. Neptune has'
          ' several moons, including Triton, which is geologically active and has geysers. The planet also has faint '
          'rings, and its interior generates more heat than it receives from the Sun, causing dynamic weather patterns'
          ' in its atmosphere.',
    'identity':'Neptune – The Windy Planet'
    },
    {
      'name': 'Sun',
      'image': 'assets/images/sun.png',
      'description':'Neptune is the eighth planet from the Sun and a distant ice giant. Its striking blue color comes '
          'from methane in the atmosphere, which absorbs red light. Neptune is extremely cold, with surface '
          'temperatures averaging -214°C (-353°F). It experiences the fastest winds in the solar system, '
          'reaching up to 2,100 km/h (1,300 mph), creating massive storms and cloud formations. Neptune '
          'has several moons, including Triton, which is geologically active and has geysers. The planet also has '
          'faint rings, and its'
          ' interior generates more heat than it receives from the Sun, causing dynamic weather patterns in its'
          ' atmosphere.',
      'identity':'Sun – The Life Giver'
    },
  ];


  void _nextPlanet() {
    setState(() {
      currentIndex = (currentIndex + 1) % planets.length;
    });
  }

  void _previousPlanet() {
    setState(() {
      currentIndex = (currentIndex - 1 + planets.length) % planets.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentPlanet = planets[currentIndex];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [

            Stack(
              children: [
                Container(
                  child: Image.asset('assets/images/appbar.png'),
                ),
                Container(
                  height: 237,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.transparent, Colors.black54],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      transform: GradientRotation(20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                        'Explore',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  height: 240,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Which planet',
                        style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Padding( padding: const EdgeInsets.all(20), child:
                Container( height: 240, alignment: Alignment.bottomLeft,
                  child: Text('would you like to explore?',style:
                  TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                ),
                ),

              ],
            ),
            SizedBox(height: 10),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Image.asset(
                      currentPlanet['image']!,
                      key: ValueKey(currentPlanet['name']),
                      width: 300,
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _previousPlanet,
                        child: Icon(Icons.arrow_back,size: 30,color:Colors.white),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: CircleBorder(),
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        currentPlanet['name']!,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 30),
                      ElevatedButton(
                        onPressed: _nextPlanet,
                        child: Icon(Icons.arrow_forward,size: 30,color:Colors.white),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100),

                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PlanetDetailsScreen(
                              planetName: currentPlanet['name']!,
                              planetImage: currentPlanet['image']!,
                              description: currentPlanet['description']!,
                              identity: currentPlanet['identity']!,
                            ),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Explore ${currentPlanet['name']}',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600,color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward, size: 30,color:Colors.white ,),
                          ],
                        ),
                      )

                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
