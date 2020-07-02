enum CLAuthorizationStatus {
  kCLAuthorizationStatusNotDetermined,
  kCLAuthorizationStatusRestricted,
  kCLAuthorizationStatusDenied,
  kCLAuthorizationStatusAuthorizedAlways,
  kCLAuthorizationStatusAuthorizedWhenInUse,
  kCLAuthorizationStatusAuthorized,
}

extension CLAuthorizationStatusToX on CLAuthorizationStatus {
  int toValue() => index;
}

extension CLAuthorizationStatusFromX on int {
  CLAuthorizationStatus toAMapGeoFenceActiveAction() {
    return CLAuthorizationStatus.values[this];
  }
}
