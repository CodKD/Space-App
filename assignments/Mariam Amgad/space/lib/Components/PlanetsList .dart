import 'package:contacts/Components/PlanetsImages.dart';
import 'package:contacts/Components/AboutPlanets.dart';
import 'package:contacts/Components/PlanetData.dart';

class PlanetsList {
  static List<Planetdata> allPlanets = [

Planetdata(
    planetname: "Earth",
  planetimage: Planetsimages.earth,
  about: Aboutplanets.earthabout,
  Describtion: 'Earth: Our Blue Marble',
  DistancefromSun: 149598026,
  LengthofDay: '23.93h',
  OrbitalPeriod: 1,
  Radius: 6371,
  Mass: '5.972 × 10²⁴',
  Gravity: 9.81,
  SurfaceArea: '5.10 × 10⁸',
),

Planetdata(
  planetname: "Jupiter",
  planetimage: Planetsimages.jupiter,
  about: Aboutplanets.jupiterabout,
  Describtion: 'Jupiter: The Giant Guardian',
  DistancefromSun: 778500000,
  LengthofDay: '9.93h',
  OrbitalPeriod: 11.86,
  Radius: 69911,
  Mass: '1.898 × 10²⁷',
  Gravity: 24.79,
  SurfaceArea: '6.14 × 10¹⁰',
),

Planetdata(
  planetname: "Mars",
  planetimage: Planetsimages.mars,
  about: Aboutplanets.marsabout,
  Describtion: 'Mars: The Red Frontier',
  DistancefromSun: 227900000,
  LengthofDay: '24.6h',
  OrbitalPeriod: 1.88,
  Radius: 3389,
  Mass: '6.39 × 10²³',
  Gravity: 3.71,
  SurfaceArea: '1.45 × 10⁸',
),

Planetdata(
  planetname: "Mercury",
  planetimage: Planetsimages.mercury,
  about: Aboutplanets.mercuryabout,
  Describtion: 'Mercury: The Swift Messenger',
  DistancefromSun: 57900000,
  LengthofDay: '1407.6h',
  OrbitalPeriod: 0.24,
  Radius: 2440,
  Mass: '3.30 × 10²³',
  Gravity: 3.7,
  SurfaceArea: '7.48 × 10⁷',
),

Planetdata(
  planetname: "Neptune",
  planetimage: Planetsimages.neptune,
  about: Aboutplanets.neptuneabout,
  Describtion: 'Neptune: The Windy Blue World',
  DistancefromSun: 4495000000,
  LengthofDay: '16.1h',
  OrbitalPeriod: 164.8,
  Radius: 24622,
  Mass: '1.02 × 10²⁶',
  Gravity: 11.15,
  SurfaceArea: '7.64 × 10⁹',
),

Planetdata(
  planetname: "Saturn",
  planetimage: Planetsimages.saturn,
  about: Aboutplanets.saturnabout,
  Describtion: 'Saturn: The Ringed Jewel',
  DistancefromSun: 1434000000,
  LengthofDay: '10.7h',
  OrbitalPeriod: 29.4,
  Radius: 58232,
  Mass: '5.68 × 10²⁶',
  Gravity: 10.44,
  SurfaceArea: '4.27 × 10¹⁰',
),

Planetdata(
  planetname: "Sun",
  planetimage: Planetsimages.sun,
  about: Aboutplanets.sunabout,
  Describtion: 'Sun: The Stellar Heart',
  DistancefromSun: 0, 
  LengthofDay: '609.12h (rotation)',
  OrbitalPeriod: 0, 
  Radius: 696340,
  Mass: '1.989 × 10³⁰',
  Gravity: 274,
  SurfaceArea: '6.09 × 10¹²',
),

Planetdata(
  planetname: "Uranus",
  planetimage: Planetsimages.uranus,
  about: Aboutplanets.uranusabout,
  Describtion: 'Uranus: The Tilted Mystery',
  DistancefromSun: 2871000000,
  LengthofDay: '17.2h',
  OrbitalPeriod: 84,
  Radius: 25362,
  Mass: '8.68 × 10²⁵',
  Gravity: 8.69,
  SurfaceArea: '8.08 × 10⁹',
),

Planetdata(
  planetname: "Venus",
  planetimage: Planetsimages.venus,
  about: Aboutplanets.venusabout,
  Describtion: 'Venus: The Veiled Planet',
  DistancefromSun: 108200000,
  LengthofDay: '5832.5h',
  OrbitalPeriod: 0.62,
  Radius: 6052,
  Mass: '4.87 × 10²⁴',
  Gravity: 8.87,
  SurfaceArea: '4.60 × 10⁸',
),
  ];
}
