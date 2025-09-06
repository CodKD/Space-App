import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class EarthDescription extends SolarSystem{
  EarthDescription(): super(
    model: UsedAssets.earthPlanet,
    name: 'Earth',
    title: 'Earth: Our Blue Marble',
    distanceFromSun: 149598026,
    lengthOfDay: 23.93,
    orbitalPeriod: 1,
    radius: 6371,
    mass: '5.972 × 10²⁴',
    gravity: 9.81,
    surfaceArea: '5.10 × 10⁸',
    aboutSection:
    "Earth is the only known planet in the universe that supports life. "
    "Its unique combination of factors, including liquid water, a breathable atmosphere, "
    "and a suitable distance from the Sun, has created the ideal conditions "
    "for the development of complex organisms. "
    "Earth's magnetic field protects it from harmful solar radiation, "
    "and its atmosphere helps to regulate temperature and weather patterns.",
  );
}