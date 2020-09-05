import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'cl_floor.dart';
import 'cl_location_coordinate_2d.dart';
import 'objects.dart';

class CLLocation extends NSObject {
  Future<CLLocationCoordinate2D> get coordinate async {
    final result = await kCLMethodChannel
        .invokeMethod('CLLocation::get_coordinate', {'__this__': this});
    return CLLocationCoordinate2D()..refId = result;
  }

  Future<double> get altitude {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_altitude', {'__this__': this});
  }

  Future<double> get horizontalAccuracy {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_horizontalAccuracy', {'__this__': this});
  }

  Future<double> get verticalAccuracy {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_verticalAccuracy', {'__this__': this});
  }

  Future<double> get course {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_course', {'__this__': this});
  }

  Future<double> get speed {
    return kCLMethodChannel
        .invokeMethod('CLLocation::get_speed', {'__this__': this});
  }

  Future<CLFloor> get floor async {
    final result = await kCLMethodChannel
        .invokeMethod('CLLocation::get_floor', {'__this__': this});
    return CLFloor()..refId = result;
  }
}
