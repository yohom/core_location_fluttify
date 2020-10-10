import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:flutter/services.dart';

const kCLMethodChannel = MethodChannel(
  "com.fluttify/core_location_method",
  StandardMethodCodec(FluttifyMessageCodec('core_location_fluttify')),
);
