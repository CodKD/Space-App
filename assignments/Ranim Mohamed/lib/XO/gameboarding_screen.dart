import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whats_app5/XO/board_tile.dart';
import 'package:whats_app5/XO/game_boarding_args.dart';
import 'board_line.dart';

class GameboardingScreen extends StatefulWidget{
  static const String routeName='xo_screen';

  @override
  State<GameboardingScreen> createState() => _GameboardingScreenState();
}

class _GameboardingScreenState extends State<GameboardingScreen> {
  List<String> boardState = [
    '', '', '',
    '', '', '',
    '', '', '',

  ];
  int player1Score=0;
  int player2Score=0;
  String title='player 1"s turn';
 late GameBourdingArgs args;

  @override
  Widget build(BuildContext context) {
    args= ModalRoute.of(context)?.settings.arguments as GameBourdingArgs;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF00D2FF), Color(0xFF3A7BD5)]
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsetsGeometry.symmetric(
                      vertical: 10
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44),
                      color: Colors.white
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('player 1 (${args.firstPlayer})',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            ),),
                          Text('score:($player1Score)',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            ),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text('player 2 (${args.secondPlayer})',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            ),),
                          Text('score:($player2Score)',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700
                            ),),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text(title,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),),
                Expanded(
                  child: Container(
                    margin: EdgeInsetsGeometry.only(
                        top: 10
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          Expanded(child: Row(
                            children: [
                              BoardTile(symbol: boardState[0],
                                index: 0,
                                onBottonClick: onButtonClick,),
                              BoardLine(widht: 1,),
                              BoardTile(symbol: boardState[1],
                                index: 1,
                                onBottonClick: onButtonClick,),
                              BoardLine(widht: 2,),
                              BoardTile(symbol: boardState[2],
                                index: 2,
                                onBottonClick: onButtonClick,),


                            ],
                          )),
                          BoardLine(height: 3,),

                          Expanded(child:
                          Row(
                            children: [
                              BoardTile(symbol: boardState[3],
                                index: 3,
                                onBottonClick: onButtonClick,),
                              BoardLine(widht: 2,),
                              BoardTile(symbol: boardState[4],
                                index: 4,
                                onBottonClick: onButtonClick,),
                              BoardLine(widht: 2,),
                              BoardTile(symbol: boardState[5],
                                index: 5,
                                onBottonClick: onButtonClick,),


                            ],
                          )),
                          BoardLine(height: 3,),

                          Expanded(child:
                          Row(
                            children: [
                              BoardTile(symbol: boardState[6],
                                index: 6,
                                onBottonClick: onButtonClick,),
                              BoardLine(widht: 2,),
                              BoardTile(symbol: boardState[7],
                                index: 7,
                                onBottonClick: onButtonClick,),
                              BoardLine(widht: 2,),
                              BoardTile(symbol: boardState[8],
                                index: 8,
                                onBottonClick: onButtonClick,),


                            ],
                          )),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }

  int counter = 0;


  void onButtonClick(int index) {
    if (boardState[index].isNotEmpty) {
      return;
    }
    if (counter % 2 == 0) {
      title ='player 1"s turn';
      boardState[index] = args.firstPlayer;
    } else {
      title ='player 2"s turn';
      boardState[index] = args.secondPlayer;
    }
    counter++;
    if(checkWinner(args.firstPlayer)){
      title ='player 1"s win';
      player1Score++;
      Future.delayed(Duration(seconds:1 ),resetBoard);

      
    }else if(checkWinner(args.secondPlayer)){
      title ='player 2"s win';
      player2Score++;
      Future.delayed(Duration(seconds:1 ),resetBoard);
    }else if(counter==9){
      title ='none of players win';
      Future.delayed(Duration(seconds:1 ),resetBoard);
    }

    setState(() {

    });

  }

  bool checkWinner(String symbol){
    /* if (boardState[0] == symbol && boardState[1] == symbol &&
        boardState[2] == symbol) {
      return true;
    }
    if (boardState[3] == symbol && boardState[4] == symbol &&
        boardState[5] == symbol) {
      return true;
    }
    if (boardState[6] == symbol && boardState[7] == symbol &&
        boardState[8] == symbol) {
      return true;
    }

    */
    for (int i = 0; i < 9; i += 3) {
      if (boardState[i] == symbol && boardState[i+1] == symbol && boardState[i=2] == symbol) {
        return true;
      }
    }
    /*if (boardState[0] == symbol && boardState[3] == symbol && boardState[6] == symbol) {
      return true;
    }
    if (boardState[1] == symbol && boardState[4] == symbol && boardState[7] == symbol) {
      return true;
    }
    if (boardState[2] == symbol && boardState[5] == symbol && boardState[8] == symbol) {
      return true;
    }
     */


    for(int i = 0; i< 3 ; i++){
      if (boardState[i] == symbol && boardState[i+3] == symbol && boardState[i+6] == symbol) {
        return true;
      }
    }
    if (boardState[0] == symbol && boardState[4] == symbol && boardState[8] == symbol) {
      return true;
    }
    if (boardState[2] == symbol && boardState[4] == symbol && boardState[6] == symbol) {
      return true;
    }
    return false;

  }
  void resetBoard(){
    boardState = [
    '', '', '',
    '', '', '',
    '', '', '',
    ];
    counter=0;
    setState(() {

    });

  }
}