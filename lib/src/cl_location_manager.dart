import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLLocationManager extends NSObject {
  Future<void> requestAlwaysAuthorization() async {
    await kCLMethodChannel.invokeMethod(
        'CLLocationManager::requestAlwaysAuthorization', {'__this__': this});
  }

  Future<void> requestWhenInUseAuthorization() async {
    await kCLMethodChannel.invokeMethod(
        'CLLocationManager::requestWhenInUseAuthorization', {'__this__': this});
  }
}
