import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/floating_action_button.dart';
import 'package:space_app/screens/app_bar_bottom.dart';
import 'package:space_app/screens/flexible_spacer.dart';
import 'package:space_app/utilis/app_assets.dart';
import 'package:space_app/utilis/app_colors.dart';
import 'package:space_app/utilis/app_styles.dart';

class PlanetDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Scaffold(
        backgroundColor: Color(AppColors.black),
        appBar: AppBar(backgroundColor: Colors.transparent,
            leading: MyFloatingActionButton(tag: 'btn3', myOnPressed: Navigator.of(context).pop,
            icon: Icons.arrow_back_outlined),
          centerTitle: true,
          flexibleSpace: FlexibleSpacer(text: 'Earth'),
          bottom: PreferredSize(preferredSize: Size.fromHeight(72),child:
          AppBarBottom(text: 'Earth: Our Blue Marble'),),
        ), body:
        SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Image.asset(AppAssets.earth),
            Text('About',style: AppStyles.bold24White, textAlign: TextAlign.start),
            Text('Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth\'s magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.',
            style: AppStyles.reg16White,
            ) ,
            planetDetails(),
            planetDetails(),
            planetDetails(),
            planetDetails(),
            planetDetails(),
            planetDetails(),
            planetDetails(),
          ],),
        )

      ),
    );
  }
      Widget planetDetails(){
    return Text('Distance from Sun (km) : 149598026', style: AppStyles.bold16White,);
      }
}