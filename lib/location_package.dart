import 'package:location/location.dart';

class LocationPackage {
  double latitude;
  double longitude;

  Future<void> getLocation() async {
    try {
      LocationData locationData = await Location().getLocation();
      print(locationData.altitude);
    } catch (e) {
      print(e);
    }
  }
}
