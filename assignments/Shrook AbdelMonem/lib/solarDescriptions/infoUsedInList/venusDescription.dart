import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class VenusDescription extends SolarSystem{
  VenusDescription(): super(
    model: UsedAssets.venusPlanet,
    name: 'Venus',
    title: "Venus: Earth's Toxic Twin",
    distanceFromSun: 108209072,
    lengthOfDay: 5832.2,
    orbitalPeriod: 0.62,
    radius: 6051.8,
    mass: '4.867 × 10²⁴',
    gravity: 8.87,
    surfaceArea: '4.60 × 10⁸',
    aboutSection:
      "Venus is often referred to as Earth's twin due to its similar size and composition."
      " However, its thick atmosphere, composed primarily of carbon dioxide,"
      " traps heat, making it the hottest planet in our solar system. "
      "This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead."
      " Venus is also shrouded in a thick layer of sulfuric acid clouds, "
      "which reflect sunlight and give it a yellowish appearance.",
  );
}