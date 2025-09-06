import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class JupiterDescription extends SolarSystem{
  JupiterDescription(): super(
    model: UsedAssets.jupiterPlanet,
    name: 'Jupiter',
    title: 'Jupiter: The Gas Giant',
    distanceFromSun: 778547669,
    lengthOfDay: 9.97,
    orbitalPeriod: 11.86,
    radius: 69911,
    mass: '1.898 × 10²⁷',
    gravity: 24.79,
    surfaceArea: '6.21 × 10¹⁵',
    aboutSection:
    "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. "
        "Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. "
        "Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
  );
}