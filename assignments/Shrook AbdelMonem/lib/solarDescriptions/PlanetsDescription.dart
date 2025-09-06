import 'infoUsedInList/earthDescription.dart';
import 'infoUsedInList/jupiterDescription.dart';
import 'infoUsedInList/marsDescription.dart';
import 'infoUsedInList/mercuryDescription.dart';
import 'infoUsedInList/neptuneDescription.dart';
import 'infoUsedInList/saturnDescription.dart';
import 'solarSystem.dart';
import 'infoUsedInList/theSun.dart';
import 'infoUsedInList/uranusDescription.dart';
import 'infoUsedInList/venusDescription.dart';

class PlanetsDescription{
  static List<SolarSystem> planetsList=[
    TheSun(),MercuryDescription(),VenusDescription(),
    EarthDescription(),MarsDescription(),JupiterDescription(),
    SaturnDescription(),UranusDescription(),NeptuneDescription()
  ];
}