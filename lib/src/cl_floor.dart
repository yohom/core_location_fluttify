// ignore_for_file: non_constant_identifier_names
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLFloor extends NSObject {
  @override
  String tag__ = 'core_location_fluttify';

  Future<String> get level {
    return kCLMethodChannel
        .invokeMethod('CLFloor::get_level', {'__this__': this});
  }
}
