import 'package:flutter/material.dart';
import '/core/assets/usedColors.dart';
import '../core/assets/usedAssets.dart';
import 'homeScreen.dart';

class LoginScreen extends StatelessWidget{
  static String routeName='LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UsedColor.blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Image.asset(UsedAssets.loginScreenPlanet,
                height: double.infinity,width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 12,
                    child: Row(
                      children: [
                        Text('Explore\nThe\nUniverse',
                          style: TextStyle(
                            color: UsedColor.whiteColor,
                            fontSize: 48,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ///explore Button//
                  ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.all(16),
                      backgroundColor: UsedColor.redColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30),
                      )
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Text('Explore',
                            style: TextStyle(
                              color: UsedColor.whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_forward,
                          color: UsedColor.whiteColor,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}