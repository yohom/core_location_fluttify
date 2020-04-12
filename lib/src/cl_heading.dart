import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLHeading extends Ref {
  Future<double> get magneticHeading {
    return kCLMethodChannel
        .invokeMethod('CLHeading::getMagneticHeading', {'refId': refId});
  }

  Future<double> get trueHeading {
    return kCLMethodChannel
        .invokeMethod('CLHeading::getTrueHeading', {'refId': refId});
  }

  Future<double> get headingAccuracy {
    return kCLMethodChannel
        .invokeMethod('CLHeading::getHeadingAccuracy', {'refId': refId});
  }
}
