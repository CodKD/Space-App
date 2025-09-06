import '../../core/assets/usedAssets.dart';
import '../solarSystem.dart';

class TheSun extends SolarSystem{
  TheSun(): super(
    model: UsedAssets.theSun,
    name: 'Sun',
    title: "The Sun: Our Solar System's Star",
    distanceFromSun: 0,
    lengthOfDay: 0,
    orbitalPeriod: 0,
    radius: 695700,
    mass: '1.989 × 10³⁰',
    gravity: 274,
    surfaceArea: '6.09 × 10¹²',
    aboutSection:
    "The Sun is the heart of our solar system, a massive ball of plasma that provides heat,"
    " light, and energy to everything within its gravitational pull. "
    "Its immense size and temperature are fueled by nuclear fusion, "
    "a process that combines hydrogen atoms into helium, releasing vast amounts of energy. "
    "The Sun's magnetic field, which is constantly changing, influences solar activity "
    "like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
  );
}