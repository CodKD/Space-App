import 'package:flutter/material.dart';
import 'hotel_name.dart';
import 'hotels_name.dart';
class HotelView extends StatelessWidget{
  String image;
  String name;
  HotelView({required this.image,required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(image,
              width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,

          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: HotelName(name:name),
          )
        ],
      ),
    );

  }

}
/*
*  Container(
              width: 195,
              height: 231,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/sharm_image.png"),)
              ),
            ),*/