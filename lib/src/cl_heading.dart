// ignore_for_file: non_constant_identifier_names
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLHeading extends Ref {
  @override
  final String tag__ = 'core_location_fluttify';

  Future<double?> get magneticHeading {
    return kCLMethodChannel
        .invokeMethod('CLHeading::getMagneticHeading', {'__this__': this});
  }

  Future<double?> get trueHeading {
    return kCLMethodChannel
        .invokeMethod('CLHeading::getTrueHeading', {'__this__': this});
  }

  Future<double?> get headingAccuracy {
    return kCLMethodChannel
        .invokeMethod('CLHeading::getHeadingAccuracy', {'__this__': this});
  }
}
