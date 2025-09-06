import 'package:flutter/material.dart';
import '/core/assets/usedColors.dart';


class ExploreButton extends StatelessWidget{
  String planetName;
  Function onClick;
  ExploreButton({this.planetName='', required this.onClick});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      onClick();
    },
      style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.all(16),
          backgroundColor: UsedColor.redColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          )
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text('Explore $planetName',
              style: TextStyle(
                color: UsedColor.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(Icons.arrow_forward,
            color: UsedColor.whiteColor,
            size: 22,
          ),
        ],
      ),
    );
  }
}