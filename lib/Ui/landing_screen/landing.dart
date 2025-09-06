import 'package:flutter/material.dart';
import 'package:space_app/Ui/Widgets/custom_elevated_button.dart';

import '../../core/assets/app_colors.dart';
import '../../core/assets/app_images.dart';
import '../../core/constants/routes.dart';
import '../../core/constants/strings.dart';

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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.exploreTheUniverse,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                      fontSize: 48),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: CustomElevatedButton(
                    text: Strings.explore,
                    onpressed: () {
                      Navigator.pushReplacementNamed(context, Routes.homeRoute);
                    }))
          ],
        ),
      ),
    );
  }
}
