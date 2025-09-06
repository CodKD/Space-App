import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class MercuryDescription extends SolarSystem {
  MercuryDescription(): super(
    model: UsedAssets.mercuryPlanet,
    name: 'Mercury',
    title: 'Mercury:The Closest Planet',
    distanceFromSun: 57909227,
    lengthOfDay: 1407.6,
    orbitalPeriod: 0.24,
    radius: 2439.7,
    mass: '3.301 × 10²³',
    gravity: 3.7,
    surfaceArea: '7.48 × 10⁷',
    aboutSection:
    "Mercury is the smallest planet in our solar system and closest to the Sun. "
    "It has a rocky surface covered with craters and experiences extreme temperature variations. "
    "Despite its proximity to the Sun, Mercury has no atmosphere to retain heat, "
    "making its nights freezing cold. Its short orbital period means it completes a year in just 88 Earth days.",
  );
}