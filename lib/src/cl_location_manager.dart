// ignore_for_file: non_constant_identifier_names
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLLocationManager extends NSObject {
  @override
  String tag__ = 'core_location_fluttify';

  Future<void> requestAlwaysAuthorization() async {
    await kCLMethodChannel.invokeMethod(
        'CLLocationManager::requestAlwaysAuthorization', {'__this__': this});
  }

  Future<void> requestWhenInUseAuthorization() async {
    await kCLMethodChannel.invokeMethod(
        'CLLocationManager::requestWhenInUseAuthorization', {'__this__': this});
  }
}
