import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardLine extends StatelessWidget{
  double height;
  double widht;

  BoardLine({this.height=double.infinity,
  this.widht=double.infinity});
  @override
  Widget build(BuildContext context) {
    return
     Container(
      height:height,
      width: widht,
      color: Colors.black,
    );
  }

}