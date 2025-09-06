import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerChoice extends StatelessWidget{
  String symbolText ;
  PlayerChoice({required this.symbolText});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white

      ),
      child: Image.asset('assets/images/$symbolText.png'),
    );
  }

}