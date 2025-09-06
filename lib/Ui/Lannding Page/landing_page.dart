import 'package:flutter/material.dart';
import 'package:space_app/Ui/Lannding%20Page/widgets/custom_elevated_btn.dart';
import 'package:space_app/core/assets/app_colors.dart';
import 'package:space_app/core/assets/app_images.dart';
import 'package:space_app/core/constants/routes.dart';
import 'package:space_app/core/constants/strings.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              AppImages.splashImage,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Strings.exploreTheUniverse,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                        fontSize: 48),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: CustomElevatedBtn(
                text: Strings.explore,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(Routes.homeRoute);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
