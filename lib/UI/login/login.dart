import 'package:flutter/material.dart';
import 'package:space_app/core/assets/app_colors.dart';
import 'package:space_app/core/assets/app_images.dart';
import 'package:space_app/core/constants/routes.dart';
import 'package:space_app/core/constants/strings.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashImage,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: FittedBox(
                        child: Text(
                          Strings.exploreTheUniverse,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.homeRoute);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Strings.explore),
                    Icon(Icons.arrow_forward_ios_sharp)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
