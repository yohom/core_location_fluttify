//
// Created by Yohom Bao on 2019/11/22.
//

#import <CoreLocation/CoreLocation.h>
#import "CLFloorHandler.h"

extern NSMutableDictionary<NSString *, NSObject *> *STACK;
extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;
extern BOOL enableLog;

void CLFloorHandler(NSString *method, id rawArgs, FlutterResult methodResult) {
  // CLFloor获取level
  if ([@"CLFloor::get_level" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLFloor *__this__ = (CLFloor *) args[@"__this__"];
    if (__this__ != nil && (NSNull *) __this__ != [NSNull null]) {
      methodResult(@(__this__.level));
    } else {
      methodResult([FlutterError errorWithCode:@"目标对象为null"
                                       message:@"目标对象为null"
                                       details:@"目标对象为null"]);
    }
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}
