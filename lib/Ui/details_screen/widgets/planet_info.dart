import 'package:flutter/material.dart';

class PlanetInfo extends StatelessWidget {
  const PlanetInfo({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        "$title : $value",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
