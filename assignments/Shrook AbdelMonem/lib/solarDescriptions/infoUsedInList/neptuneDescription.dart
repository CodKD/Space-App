import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class NeptuneDescription extends SolarSystem{
  NeptuneDescription(): super(
    model: UsedAssets.neptunePlanet,
    name: 'Neptune',
    title: 'Neptune: The Distant World',
    distanceFromSun: 4498252900,
    lengthOfDay: 16.11,
    orbitalPeriod: 164.8,
    radius: 24622,
    mass: '1.024 × 10²⁸',
    gravity: 11.15,
    surfaceArea: '7.65 × 10¹⁵',
    aboutSection:
    "Neptune is the farthest planet from the Sun and is another ice giant. "
        "Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. "
        "Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
  );
}