import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnBottonClick = void Function(int);
class BoardTile extends StatelessWidget{

  String symbol;
  int index;
  OnBottonClick onBottonClick;

  BoardTile({required this.symbol,required this.onBottonClick,
  required this.index});
  @override
  Widget build(BuildContext context) {

    return  Expanded(
      child: InkWell(
        onTap: (){
          onBottonClick(index);

        },
         child:symbol.isEmpty?
              Container()
          :
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/$symbol.png'),
          ),
      ),
    );
  }

}