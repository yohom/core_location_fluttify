import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'cl_floor.dart';
import 'cl_location_coordinate_2d.dart';
import 'objects.dart';

class CLLocation extends NSObject {
  Future<CLLocationCoordinate2D> get coordinate async {
    final result = await kCLMethodChannel
        .invokeMethod('CLLocation::get_coordinate', {'refId': refId});
    return CLLocationCoordinate2D()..refId = result;
  }

  Future<double> get altitude {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_altitude', {'refId': refId});
  }

  Future<double> get horizontalAccuracy {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_horizontalAccuracy', {'refId': refId});
  }

  Future<double> get verticalAccuracy {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_verticalAccuracy', {'refId': refId});
  }

  Future<double> get course {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_course', {'refId': refId});
  }

  Future<double> get speed {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_speed', {'refId': refId});
  }

  Future<CLFloor> get floor async {
    final result = await kCLMethodChannel
        .invokeMethod('CLLocation::get_floor', {'refId': refId});
    return CLFloor()..refId = result;
  }
}
