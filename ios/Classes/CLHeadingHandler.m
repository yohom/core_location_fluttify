//
//  CLHeadingHandler.m
//  foundation_fluttify
//
//  Created by Yohom Bao on 2019/12/11.
//

#import "CLHeadingHandler.h"
#import <CoreLocation/CoreLocation.h>

extern NSMutableDictionary<NSString *, NSObject *> *STACK;
extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;
extern BOOL enableLog;

void CLHeadingHandler(NSString *method, id rawArgs, FlutterResult methodResult) {
  if ([@"CLHeading::getMagneticHeading" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLHeading *__this__ = (CLHeading *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      CLLocationDirection magneticHeading = [__this__ magneticHeading];

      methodResult(@(magneticHeading));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  }
  if ([@"CLHeading::getTrueHeading" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLHeading *__this__ = (CLHeading *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      CLLocationDirection trueHeading = [__this__ trueHeading];

      methodResult(@(trueHeading));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  }
  if ([@"CLHeading::getHeadingAccuracy" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLHeading *__this__ = (CLHeading *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      CLLocationDirection headingAccuracy = [__this__ headingAccuracy];

      methodResult(@(headingAccuracy));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}
