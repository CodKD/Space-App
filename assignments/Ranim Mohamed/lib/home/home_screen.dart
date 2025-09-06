import 'package:whats_app5/login/login_screen.dart';
import 'package:whats_app5/model/hotel.dart';

import "../hotel_name.dart";
import 'package:flutter/material.dart';

import 'hotel_view.dart';
import 'hotels_name.dart';
class HomeScreen extends StatelessWidget{

   static const String routeName='home_screen';
  List<Hotel>hotellist=[];

  void addHotallist(){
    for(int i=1; i<=1000;i++){
      hotellist.add(Hotel(
          name: 'Hotel num $i', image: 'assets/images/sharm_image.png'));
    }
  }
  HomeScreen(){
    addHotallist();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child:Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                  Navigator.popUntil(context, (route)=>route.settings.name==LoginScreen.routeName);

                }
                    , child: Text('back')),
                Expanded(
                  child: GridView.builder(
                  
                      itemBuilder:(context, index)=> HotelView(
                          image: hotellist[index].image, name: hotellist[index].name),
                    itemCount: hotellist.length,
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                       crossAxisCount: 2,
                       mainAxisSpacing: 10,
                       crossAxisSpacing: 15,
                       childAspectRatio: 1/1
                     ),
                  ),
                ),
              ],
            )

        ),
      ),
    );

  }
 HotelView mapToHotel(Hotel hotel){
    return HotelView(image: hotel.image, name: hotel.name);

}
 HotelView buildItemsInList(BuildContext context,int index)  {
    return HotelView(image: hotellist[index].image, name: hotellist[index].name);

}
}
/*
* ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF024383),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),

            ),
            padding: EdgeInsets.symmetric(vertical: 16)
          ),
          onPressed: (){},
          child: Text('Available Hotels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ))
          */