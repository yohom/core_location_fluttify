//
// Created by Yohom Bao on 2019/11/22.
//

#import <CoreLocation/CoreLocation.h>
#import "CLLocationHandler.h"

extern NSMutableDictionary<NSString *, NSObject *> *STACK;
extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;
extern BOOL enableLog;

void CLLocationHandler(NSString *method, id rawArgs, FlutterResult methodResult) {
  if ([@"CLLocation::get_coordinate" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      CLLocationCoordinate2D data = __this__.coordinate;
      NSValue *dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];

      methodResult(dataValue);
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else if ([@"CLLocation::get_altitude" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      methodResult(@(__this__.altitude));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else if ([@"CLLocation::get_horizontalAccuracy" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      methodResult(@(__this__.horizontalAccuracy));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else if ([@"CLLocation::get_verticalAccuracy" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      methodResult(@(__this__.verticalAccuracy));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else if ([@"CLLocation::get_course" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      methodResult(@(__this__.course));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else if ([@"CLLocation::get_speed" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      methodResult(@(__this__.speed));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else if ([@"CLLocation::get_floor" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocation *__this__ = (CLLocation *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      CLFloor *floor = __this__.floor;
      methodResult(floor);
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}
