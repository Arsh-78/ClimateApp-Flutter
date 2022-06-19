import 'package:geolocator/geolocator.dart';

class Location {
  double Longitude;
  double Latitude;
  Position pos;
  Future<void> getCurrentLocation() async {
    //Since main or other screen needs to wait for this method to return location we would havr to use await
    //there and to be able to do tha this function must return a Fututre so changing the return typr as Future<void>
    try {
      pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      this.Latitude = pos.latitude;
      this.Longitude = pos.longitude;
    } catch (e) {
      print(e);
    }
  }
}
