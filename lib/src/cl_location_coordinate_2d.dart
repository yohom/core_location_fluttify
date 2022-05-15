// ignore_for_file: non_constant_identifier_names
import 'package:foundation_fluttify/foundation_fluttify.dart';

import 'objects.dart';

class CLLocationCoordinate2D extends Ref {
  @override
  final String tag__ = 'core_location_fluttify';

  static Future<CLLocationCoordinate2D> create(
    double latitude,
    double longitude,
  ) async {
    final result = await kCLMethodChannel.invokeMethod<Ref>(
      'CLLocationCoordinate2D::createCLLocationCoordinate2D',
      {'latitude': latitude, 'longitude': longitude},
    );
    return CLLocationCoordinate2D()..refId = result?.refId;
  }

  // ignore: non_constant_identifier_names
  static Future<List<CLLocationCoordinate2D>> create_batch(
    List<double> latitudeBatch,
    List<double> longitudeBatch,
  ) async {
    final resultBatch = await kCLMethodChannel.invokeListMethod<Ref>(
      'CLLocationCoordinate2D::create_batchCLLocationCoordinate2D',
      {
        'latitude_batch': latitudeBatch,
        'longitude_batch': longitudeBatch,
      },
    );
    return resultBatch!
        .map((it) => CLLocationCoordinate2D()..refId = it.refId)
        .toList();
  }

  Future<double?> get latitude {
    return kCLMethodChannel.invokeMethod(
        'CLLocationCoordinate2D::get_latitude', {'__this__': this});
  }

  Future<double?> get longitude {
    return kCLMethodChannel.invokeMethod(
        'CLLocationCoordinate2D::get_longitude', {'__this__': this});
  }
}

extension CLLocationCoordinate2DListX on List<CLLocationCoordinate2D> {
  Future<List<double>?> get latitudeBatch async {
    final result = await kCLMethodChannel.invokeListMethod<double>(
      'CLLocationCoordinate2D::get_latitude_batch',
      [
        for (final __item__ in this) {'__this__': __item__}
      ],
    );
    return result;
  }

  Future<List<double>?> get longitudeBatch async {
    final result = await kCLMethodChannel.invokeListMethod<double>(
      'CLLocationCoordinate2D::get_longitude_batch',
      [
        for (final __item__ in this) {'__this__': __item__}
      ],
    );
    return result;
  }
}
