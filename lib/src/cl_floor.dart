import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLFloor extends NSObject {
  Future<String> get level {
    return kCLMethodChannel
        .invokeMethod('CLFloor::get_level', {'__this__': this});
  }
}
