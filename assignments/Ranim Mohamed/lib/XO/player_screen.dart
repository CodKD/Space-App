import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app5/XO/game_boarding_args.dart';
import 'package:whats_app5/XO/gameboarding_screen.dart';
import 'package:whats_app5/XO/player_choice.dart' show PlayerChoice;

class PlayerScreen extends StatelessWidget{

static const String routeName='player_screen';
  @override
  Widget build(BuildContext context) {
  return Stack(
    children: [
      Image.asset('assets/images/background.png',
      width:double.infinity ,
      height: double.infinity,
      fit:BoxFit.fill ,),
      SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('pick who goes first?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed(GameboardingScreen.routeName,
                      arguments: GameBourdingArgs(
                          firstPlayer: 'x',
                          secondPlayer: 'o')
                      );

                    },
                      child: PlayerChoice(symbolText:'x')),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacementNamed(GameboardingScreen.routeName,
                      arguments:GameBourdingArgs(
                          firstPlayer: 'o',
                          secondPlayer:'x')
                      );
 


                    },
                      child: PlayerChoice(symbolText:'o')),


                ],
              )
            ],
          ) ,
        
        
           ),
      ),


    ],


  );
  }

}