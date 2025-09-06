import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_theme.dart';
import '../models/planet.dart';

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailScreen({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(
                image: AssetImage(planet.imagePath),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.of(context).pop(),
                            icon: const Icon(
                              Icons.arrow_back,
                              color: AppColors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Text(
                            planet.name,
                            style: AppTheme.darkTheme.textTheme.displaySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(width: 56),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      planet.subtitle,
                      style: AppTheme.darkTheme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        planet.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: AppTheme.darkTheme.textTheme.displaySmall,
                        ),
                        
                        const SizedBox(height: 16),
                        
                        Text(
                          planet.description,
                          style: AppTheme.darkTheme.textTheme.bodyLarge,
                        ),
                        
                        const SizedBox(height: 24),
                        
                        ...planet.statistics.entries.map((entry) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    entry.key,
                                    style: AppTheme.darkTheme.textTheme.bodyMedium?.copyWith(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    _formatStatistic(entry.value),
                                    style: AppTheme.darkTheme.textTheme.bodyLarge,
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatStatistic(dynamic value) {
    if (value is double) {
      if (value >= 1e6) {
        return '${(value / 1e6).toStringAsFixed(1)}M';
      } else if (value >= 1e3) {
        return '${(value / 1e3).toStringAsFixed(1)}K';
      } else {
        return value.toStringAsFixed(2);
      }
    } else if (value is int) {
      if (value >= 1e6) {
        return '${(value / 1e6).toStringAsFixed(1)}M';
      } else if (value >= 1e3) {
        return '${(value / 1e3).toStringAsFixed(1)}K';
      } else {
        return value.toString();
      }
    }
    return value.toString();
  }
}
