import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isEnabled;

  const NavigationButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43,
      height: 43,
      decoration: BoxDecoration(
        color: isEnabled ? AppColors.red : AppColors.red.withOpacity(0.3),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: isEnabled ? onPressed : null,
        icon: Icon(icon, color: AppColors.white, size: 22),
      ),
    );
  }
}
