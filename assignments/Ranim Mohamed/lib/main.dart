/*import 'package:flutter/material.dart';
import 'XO/gameboarding_screen.dart';
import 'XO/player_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: PlayerScreen.routeName,
      routes:{
        PlayerScreen.routeName:(context)=> PlayerScreen(),
        GameboardingScreen.routeName:(context)=> GameboardingScreen(),
      },
    );
  }
}
 */
import 'package:flutter/material.dart';

import 'SpaceApp/explore_screen.dart';

void main() {
  runApp(SpaceApp());
}

class SpaceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExploreScreen(),

    );
  }
}

