import 'package:spaceapp/planetPage/planets.dart';

class PlanetsData {
  static List<Planets> getPlanets() {
    return [
      Planets(
        name: "Earth",
        imagePath: "assets/models/earth.glb",
        description:
            "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
        information:
            "Distance from Sun (km) : 149,598,026 \n\nLength of Day (hours) : 23.93 \n\nOrbital Period (Earth years) : 1 \n\nRadius (km) : 6,371 \n\nMass (kg) : 5.972 × 10²⁴ \n\nGravity (m/s²) : 9.81 \n\nSurface Area (km²) : 5.10 × 10⁸ ",
      ),
      Planets(
        name: "Mercury",
        imagePath: "assets/models/mercury.glb",
        description:
            "Mercury is the first planet from the Sun and the smallest in the Solar System. It is a rocky planet with a trace atmosphere and a surface gravity slightly higher than that of Mars. The surface of Mercury is similar to Earth's Moon, being heavily cratered, with an expansive rupes system generated from thrust faults, and bright ray systems, formed by ejecta. Its largest crater, Caloris Planitia, has a diameter of 1,550 km (960 mi), which is about one-third the diameter of the planet (4,880 km or 3,030 mi). Being the most inferior orbiting planet, it always appears close to the sun in Earth's sky, either as a morning star or an evening star.” It is also the planet with the highest delta-v needed to travel to and from all other planets of the Solar System.",
        information:
            "Distance from Sun (km) : 57,909,227 \n\nLength of Day (hours) : 1,407.60 \n\nOrbital Period (Earth years) : 0.24 \n\nRadius (km) : 2,439.70 \n\nMass (kg) : 3.301 × 10²³ \n\nGravity (m/s²) : 3.7 \n\nSurface Area (km²) : 7.48 × 10⁷ ",
      ),
      Planets(
        name: "Venus",
        imagePath: "assets/models/venus.glb",
        description:
            "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere, composed primarily of carbon dioxide, traps heat, making it the hottest planet in our solar system. This greenhouse effect has created a hostile environment with temperatures hot enough to melt lead. Venus is also shrouded in a thick layer of sulfuric acid clouds, which reflect sunlight and give it a yellowish appearance.",
        information:
            "Distance from Sun (km) : 108,209,072 \n\nLength of Day (hours) : 5,832.20 \n\nOrbital Period (Earth years) : 0.62 \n\nRadius (km) : 6,051.80 \n\nMass (kg) : 4.867 × 10²⁴ \n\nGravity (m/s²) : 8.87 \n\nSurface Area (km²) : 4.60 × 10⁸ ",
      ),
      Planets(
        name: "Mars",
        imagePath: "assets/models/Mars.glb",
        description:
            "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps, ancient riverbeds, and evidence of past volcanic activity, suggesting that it once had a warmer, wetter climate. Mars is a prime target for exploration due to its potential for past or present life, and NASA's Perseverance rover is currently searching for signs of ancient microbial life on the planet's surface.",
        information:
            "Distance from Sun (km) : 227,943,824 \n\nLength of Day (hours) : 24.62 \n\nOrbital Period (Earth years) : 1.88 \n\nRadius (km) : 3,389.50 \n\nMass (kg) : 6.39 × 10²³ \n\nGravity (m/s²) : 3.71 \n\nSurface Area (km²) : 1.45 × 10⁸ ",
      ),
      Planets(
        name: "Jupiter",
        imagePath: "assets/models/jupiter.glb",
        description:
            "Jupiter is the largest planet in our solar system, a gas giant composed primarily of hydrogen and helium. Its Great Red Spot, a massive storm that has been raging for centuries, is a testament to its turbulent atmosphere. Jupiter has a strong magnetic field and numerous moons, including Europa, which is believed to have a subsurface ocean that could potentially harbor life.",
        information:
            "Distance from Sun (km) : 778,547,669 \n\nLength of Day (hours) : 9.92 \n\nOrbital Period (Earth years) : 11.86 \n\nRadius (km) : 69,911 \n\nMass (kg) : 1.898 × 10²⁷ \n\nGravity (m/s²) : 24.79 \n\nSurface Area (km²) : 6.21 × 10¹⁵ ",
      ),
      Planets(
        name: "Saturn",
        imagePath: "assets/models/saturn.glb",
        description:
            "Saturn is best known for its spectacular rings, which are composed of countless ice particles and rocks. It is a gas giant with a composition similar to Jupiter, but its rings and moons give it a distinct appearance. Saturn's largest moon, Titan, has a thick atmosphere and is the only known celestial body outside of Earth with liquid lakes and rivers.",
        information:
            "Distance from Sun (km) : 1,426,666,422 \n\nLength of Day (hours) : 10.66 \n\nOrbital Period (Earth years) : 29.46 \n\nRadius (km) : 58,232 \n\nMass (kg) : 5.683 × 10²⁶ \n\nGravity (m/s²) : 10.44 \n\nSurface Area (km²) : 4.27 × 10¹⁵ ",
      ),
      Planets(
        name: "Uranus",
        imagePath: "assets/models/uranus.glb",
        description:
            "Uranus is an ice giant with a unique axial tilt, causing its seasons to be extreme. It is surrounded by faint rings and has numerous moons, including Miranda, known for its chaotic terrain. Uranus's atmosphere is composed primarily of hydrogen, helium, and methane, giving it a pale blue color.",
        information:
            "Distance from Sun (km) : 2,870,990,000 \n\nLength of Day (hours) : 17.24 \n\nOrbital Period (Earth years) : 84.01 \n\nRadius (km) : 25,362 \n\nMass (kg) : 8.681 × 10²⁵ \n\nGravity (m/s²) : 8.69 \n\nSurface Area (km²) : 8.1 × 10¹⁵ ",
      ),
      Planets(
        name: "Neptune",
        imagePath: "assets/models/neptune.glb",
        description:
            "Neptune is the farthest planet from the Sun and is another ice giant. Its atmosphere is similar to Uranus, but it is a deeper blue color due to the presence of methane. Neptune has several moons, including Triton, which orbits the planet in a retrograde direction and is believed to be a captured Kuiper Belt object.",
        information:
            "Distance from Sun (km) : 4,498,252,900 \n\nLength of Day (hours) : 16.11 \n\nOrbital Period (Earth years) : 164.8 \n\nRadius (km) : 24,622 \n\nMass (kg) : 1.024 × 10²⁶ \n\nGravity (m/s²) : 11.15 \n\nSurface Area (km²) : 7.65 × 10¹⁵ ",
      ),
      Planets(
        name: "The Sun",
        imagePath: "assets/models/sun.glb",
        description:
            "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
        information:
            "Distance from Sun (km) : 0 \n\nLength of Day (hours) : 0 \n\nOrbital Period (Earth years) : 0 \n\nRadius (km) : 695,700 \n\nMass (kg) : 1.989 × 10³⁰ \n\nGravity (m/s²) : 274 \n\nSurface Area (km²) : 6.09 × 10¹² ",
      ),
      Planets(
          name: "Solar System",
          imagePath: "assets/models/solar_system.glb",
          description:
              "The Solar System consists of the Sun (a star), eight planets (Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune), moons, dwarf planets like Pluto, asteroids, comets, and icy bodies, all held together by the Sun's gravity. It formed about 4.6 billion years ago from a collapsing molecular cloud and is located in the Orion-Cygnus Arm of the Milky Way galaxy. The inner planets are rocky, while the outer planets are gas and ice giants, with moons orbiting most planets, though Mercury and Venus have none.",
          information: ""),
    ];
  }
}
