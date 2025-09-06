import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class UranusDescription extends SolarSystem{
  UranusDescription(): super(
    model: UsedAssets.uranusPlanet,
    name: 'Uranus',
    title: 'Uranus: The Tilted Planet',
    distanceFromSun: 2870990000,
    lengthOfDay: 17.24,
    orbitalPeriod: 84.01,
    radius: 25362,
    mass: '8.681 × 10²⁵',
    gravity: 8.69,
    surfaceArea: '8.1 × 10¹⁵',
    aboutSection:
    "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. "
        "It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. "
        "Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
  );
}