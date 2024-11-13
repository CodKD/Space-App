import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/UI/details/widgets/planet_info.dart';
import 'package:space_app/UI/details/widgets/planet_title_widget.dart';
import 'package:space_app/core/assets/app_colors.dart';
import 'package:space_app/core/assets/app_images.dart';
import 'package:space_app/core/constants/strings.dart';
import 'package:space_app/models/planet.dart';

// ignore: must_be_immutable
class PlanetDetails extends StatelessWidget {
  Planet? planet;
  Flutter3DController controller = Flutter3DController();
  PlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    planet ??= ModalRoute.of(context)!.settings.arguments as Planet;
    return Scaffold(
      appBar: PlanetTitleWidget(planet!.title , planet!.name),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1,
            child: Flutter3DViewer(
              progressBarColor: AppColors.red,
              activeGestureInterceptor: true,
              enableTouch: true,
              controller: controller,
              src: planet!.model,
            ),
          ),
          Text(Strings.about, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text(planet!.about, style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 8),
          PlanetInfo(Strings.distanceFromSun , planet!.distanceFromSun),
          PlanetInfo(Strings.lengthOfDay , planet!.lengthOfDay),
          PlanetInfo(Strings.orbitalPeriod , planet!.orbitalPeriod),
          PlanetInfo(Strings.radius , planet!.radius),
          PlanetInfo(Strings.mass , planet!.mass),
          PlanetInfo(Strings.gravity , planet!.gravity),
          PlanetInfo(Strings.surfaceArea , planet!.surfaceArea),
        ],
      )
    );
  }
}
