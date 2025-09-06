import 'package:flutter/material.dart';
import 'package:space2/homepage.dart';
import 'package:space2/planetdetailsscreen.dart';
import 'package:space2/spaceScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: Homepage.Rouutename,
      routes: {
        Homepage.Rouutename: (context) => Homepage(),
        Spacescreen.Routename: (context) => Spacescreen(),
        Planetdetailsscreen.Routename:(context)=>Planetdetailsscreen(),

      },
    );
  }
}
