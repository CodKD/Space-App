import 'package:flutter/material.dart';
import 'package:space_app/core/assets/app_colors.dart';
import 'package:space_app/core/assets/app_images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {required this.details,
      this.hasBtn = false,
      required this.title,
      super.key});
  final String title;
  final String details;
  final bool hasBtn;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(children: [
        Image.asset(
          AppImages.halfPlantImage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.black,
                Colors.black.withValues(alpha: .6),
                Colors.transparent
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (hasBtn)
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back)),
                    const Spacer(),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const Spacer()
                  ],
                ),
                Text(
                  details,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
