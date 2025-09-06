import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';
import 'package:space_app/Ui/Details%20Page/widgets/planetInfo.dart';
import 'package:space_app/Ui/Home%20Page/widgets/custom_app_bar.dart';
import 'package:space_app/core/assets/app_colors.dart';
import 'package:space_app/models/planet.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var planet = ModalRoute.of(context)?.settings.arguments as Planet;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
                hasBtn: true, details: planet.title, title: planet.name),
            AspectRatio(
                aspectRatio: 1,
                child: Flutter3DViewer(
                    progressBarColor: AppColors.red, src: planet.model)),
            Planetinfo(title: "title", value: planet.about),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model),
            Planetinfo(title: "title", value: planet.model)
          ],
        ),
      ),
    );
  }
}
