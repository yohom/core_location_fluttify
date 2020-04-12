import 'dart:async';

import 'package:flutter/services.dart';

class CoreLocationFluttify {
  static const MethodChannel _channel =
      const MethodChannel('core_location_fluttify');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
