import 'package:flutter/material.dart';

class Planetinfo extends StatelessWidget {
  const Planetinfo({required this.title, required this.value, super.key});

  final String? title;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return Text(
      "$title : $value",
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
