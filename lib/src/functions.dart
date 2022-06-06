import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'cl_heading.dart';
import 'cl_location.dart';
import 'cl_location_coordinate_2d.dart';
import 'cl_location_manager.dart';

T? coreLocationFluttifyAndroidAs<T>(dynamic __this__) {
  return null;
}

T? coreLocationFluttifyIOSAs<T>(dynamic __this__) {
  if (T == CLLocation) {
    return (CLLocation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLHeading) {
    return (CLHeading()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLLocationCoordinate2D) {
    return (CLLocationCoordinate2D()..refId = (__this__ as Ref).refId) as T;
  } else if (T == CLLocationManager) {
    return (CLLocationManager()..refId = (__this__ as Ref).refId) as T;
  } else {
    return null;
  }
}
