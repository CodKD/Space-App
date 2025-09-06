import 'package:flutter/material.dart';
import 'package:space_app/Home_screen.dart';

class Login extends StatelessWidget{
  static const String routeName = 'Login';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Container(
                child: Image(image: AssetImage('assets/images/planet.png'))
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child:
                    SizedBox(
                      height: 220,
                      width: 200,
                      child: Text('Explore The Universe ',style: TextStyle(
                         fontWeight: FontWeight.w900,
                        fontSize: 47
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                       {
                          Navigator.of(context).pushNamed(HomeScreen.routeName);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            style: TextStyle(color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,),
                          'Explore'),
                          Padding(
                            padding: const EdgeInsets.only(left: 230),
                            child: Icon(Icons.arrow_forward,color: Colors.white,size:30 ,),
                          )
                        ],
                      )
                  ),
                ),
              ),
            )
          ],
        ),
      ) ,
        )
    );
  }

}