import 'package:contacts/Components/AllColors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   String text;
   VoidCallback onTap; 

  Button({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, 
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Allcolors.Buttoncolor,
          borderRadius: BorderRadius.circular(29),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                color: Allcolors.Textcolor,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 110),
            Icon(Icons.arrow_forward, color: Allcolors.Textcolor),
          ],
        ),
      ),
    );
  }
}