import 'package:flutter/material.dart';
import '/core/assets/usedColors.dart';
typedef OnClick= void Function();
class SwipeButton extends StatelessWidget{
  bool rightDirection;
  OnClick onClick;
  SwipeButton({this.rightDirection=false,required this.onClick});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
            onClick();
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.all(16),
          backgroundColor: UsedColor.redColor,
          shape: CircleBorder(),
        ),
        child: (rightDirection)?Icon(Icons.arrow_forward,color: UsedColor.whiteColor,)
            :Icon(Icons.arrow_back,color: UsedColor.whiteColor,),
    );
  }

}