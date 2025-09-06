import 'package:contacts/Components/AllColors.dart';
import 'package:flutter/material.dart';

class Explorecontaier extends StatelessWidget {
  final String text1;
  final String text2;
  final bool showIcon; // بارامتر جديد اختياري

  Explorecontaier({
    required this.text1,
    required this.text2,
    this.showIcon = false, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 237,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/Rectangle 4.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              if (showIcon) InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                },
            child:  Container(
                  width: 43,
                  height: 43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Allcolors.Buttoncolor,
                  ),
                  child: Icon(Icons.arrow_back, color: Allcolors.Textcolor),
                ),

              ),
                SizedBox(width:90,),

              Text(
                text1,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Allcolors.Textcolor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 100),
          Text(
            text2,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Allcolors.Textcolor,
            ),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
