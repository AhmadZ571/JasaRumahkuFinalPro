import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationUtils {
  /// Checks for location permissions and requests them if needed.
  /// Returns true if permissions are granted, false otherwise.
  static Future<bool> checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  /// Retrieves the user's current location coordinates if permissions are granted.
  /// Returns a LatLng object with latitude and longitude, or null if location cannot be found.
  static Future<LatLng?> getCurrentLocation() async {
    if (await checkLocationPermission()) {
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        // ignore: unnecessary_null_comparison
        if (position != null) {
          return LatLng(position.latitude, position.longitude);
        }
      } on PlatformException catch (e) {
        print('Error getting location: $e');
      } on Exception catch (e) {
        print('Error getting location: $e');
      }
    }
    return null;
  }
}
