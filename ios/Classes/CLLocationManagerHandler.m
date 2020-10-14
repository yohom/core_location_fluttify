//
// Created by Yohom Bao on 2019/11/22.
//

#import <CoreLocation/CoreLocation.h>
#import "CLLocationManagerHandler.h"

extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;
extern BOOL enableLog;

void CLLocationManagerHandler(NSString *method, id rawArgs, FlutterResult methodResult) {
  if ([@"CLLocationManager::requestAlwaysAuthorization" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocationManager *__this__ = (CLLocationManager *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      [__this__ requestAlwaysAuthorization];
      methodResult(@"success");
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  }
  else if ([@"CLLocationManager::requestWhenInUseAuthorization" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocationManager *__this__ = (CLLocationManager *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      [__this__ requestWhenInUseAuthorization];

      methodResult(@"success");
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}
