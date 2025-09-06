import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/Ui/details_screen/widgets/planet_info.dart';

import '../../core/assets/app_colors.dart';
import '../../core/constants/strings.dart';
import '../../models/planet.dart';
import '../Widgets/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Planet planet = ModalRoute.of(context)!.settings.arguments as Planet;
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            mainTitle: planet.name,
            subTitle: planet.title,
            showBackButton: true,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                // why use aspect ratio ? to make the 3d model responsive and keep its ratio on different screen sizes
                // app crash when not using aspect ratio why ? because the 3d model needs a defined width and height to render properly
                // that mean that aspect ratio give the 3d model a defined width and height based on the screen size
                // if we don't use aspect ratio the 3d model will take all the available space and the app will crash
                // we can also use container with defined width and height but that will not be responsive
                // aspectRatio: 1 means that the width and height are equal so the 3d model will be a square
                AspectRatio(
                  aspectRatio: 1,
                  child: Flutter3DViewer(
                    src: planet.model,
                    progressBarColor: AppColors.red,
                    enableTouch: true,
                    activeGestureInterceptor: true,
                  ),
                ),
                Text(
                  Strings.about,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  planet.about,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                PlanetInfo(
                  title: Strings.distanceFromSun,
                  value: planet.distanceFromSun,
                ),
                PlanetInfo(
                  title: Strings.lengthOfDay,
                  value: planet.lengthOfDay,
                ),
                PlanetInfo(
                  title: Strings.orbitalPeriod,
                  value: planet.orbitalPeriod,
                ),
                PlanetInfo(
                  title: Strings.radius,
                  value: planet.radius,
                ),
                PlanetInfo(
                  title: Strings.mass,
                  value: planet.mass,
                ),
                PlanetInfo(
                  title: Strings.gravity,
                  value: planet.gravity,
                ),
                PlanetInfo(
                  title: Strings.surfaceArea,
                  value: planet.surfaceArea,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
