import 'package:flutter/material.dart';

typedef OnButtonClick = void Function();

class Buttonclick extends StatelessWidget {
  Buttonclick({super.key, required this.icon, required this.onButtonClick});
  OnButtonClick onButtonClick;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.red,
      radius: 25,
      child: GestureDetector(
        onTap: onButtonClick,

        child: Icon(color: Colors.white, size: 20, icon),
      ),
    );
  }
}
