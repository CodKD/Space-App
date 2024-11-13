import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/UI/details/widgets/planet_title_widget.dart';
import 'package:space_app/core/assets/app_colors.dart';
import 'package:space_app/core/assets/app_images.dart';
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
      body: Column(
        children: [
          Expanded(
            child: Flutter3DViewer(

              progressBarColor: Colors.orange,
              controller: controller,
              src: planet!.model,
            ),
          ),
        ],
      )
    );
  }
}
