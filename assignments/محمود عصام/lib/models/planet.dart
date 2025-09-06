class Planet {
  final String name;
  final String description;
  final String imagePath;
  final String subtitle;
  final Map<String, dynamic> statistics;

  const Planet({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.subtitle,
    required this.statistics,
  });
}

class PlanetData {
  static const List<Planet> planets = [
    Planet(
      name: 'Mercury',
      subtitle: 'Mercury: The Swift Planet',
      imagePath: 'assets/1.png',
      description:
          'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'Earth',
      subtitle: 'Venus: The Morning Star',
      imagePath: 'assets/earth 1.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'mercury',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/earth 2.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'jupiter',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/jupiter.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'mars',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/mars.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'neptune',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/neptune.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'saturn',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/saturn.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'sun',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/sun.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'uranus',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/uranus.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
    Planet(
      name: 'venus',
      subtitle: 'Earth: Our Blue Marble',
      imagePath: 'assets/venus.png',
      description:
      'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods.',
      statistics: {
        'Distance from Sun (km)': 149598026,
        'Length of Day (hours)': 23.93,
        'Orbital Period (Earth years)': 1,
        'Radius (km)': 6371,
        'Mass (kg)': 3.285e23,
        'Gravity (m/s²)':  9.81,
        'Surface Area (km²)': 7.48e7,
      },
    ),
  ];
}
