import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class MarsDescription extends SolarSystem{
  MarsDescription(): super(
    model: UsedAssets.marsPlanet,
    name: 'Mars',
    title: 'Earth: Our Blue Marble',
    distanceFromSun: 227943824,
    lengthOfDay: 24.62,
    orbitalPeriod: 1.88,
    radius: 3389.5,
    mass: '6.39 × 10²³',
    gravity: 3.71,
    surfaceArea: '1.45 × 10⁸',
    aboutSection:
      "Mars, often called the Red Planet due to its reddish hue caused by "
          "iron oxide, is a cold, rocky world with a thin atmosphere. "
          "It has polar ice caps, ancient riverbeds, and evidence of past volcanic"
          " activity, suggesting that it once had a warmer, wetter climate."
          " Mars is a prime target for exploration due to its potential for "
          "past or present life, and NASA's Perseverance rover is currently"
          " searching for signs of ancient microbial life on the planet's surface.",
  );
}