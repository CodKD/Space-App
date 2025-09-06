import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class SaturnDescription extends SolarSystem{
  SaturnDescription(): super(
    model: UsedAssets.saturnPlanet,
    name: 'Saturn',
    title: 'Saturn: The Ringed Planet',
    distanceFromSun: 1426666422,
    lengthOfDay: 10.66,
    orbitalPeriod: 29.46,
    radius: 58232,
    mass: '5.683 × 10²⁶',
    gravity: 10.44,
    surfaceArea: '4.27 × 10¹⁵',
    aboutSection:
    "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. "
        "It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. "
        "Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
  );
}