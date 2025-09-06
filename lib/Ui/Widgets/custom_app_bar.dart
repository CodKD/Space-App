import 'package:flutter/material.dart';

import '../../core/assets/app_colors.dart';
import '../../core/assets/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.mainTitle,
      required this.subTitle,
      this.showBackButton = false});

  final String mainTitle;
  final String subTitle;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.halfPlantImage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              AppColors.black,
              AppColors.black.withOpacity(0.6),
              Colors.transparent
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
            child: SafeArea(
              child: Column(
                children: [
                  _buildTopSection(context),
                  SizedBox(
                    height: 30,
                  ),
                  _buildBottomSecgtion(context)
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildTopSection(BuildContext context) {
    if (showBackButton) {
      return Row(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(shape: CircleBorder()),
              onPressed: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back)),
          // SizedBox(
          //   // width: 80,
          // ),
          Spacer(),
          Text(
            mainTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Spacer(),
        ],
      );
    } else {
      return Text(
        mainTitle,
        style: Theme.of(context).textTheme.titleLarge,
      );
    }
  }

  Widget _buildBottomSecgtion(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            subTitle,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
