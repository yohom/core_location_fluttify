//
// Created by Yohom Bao on 2019/11/22.
//

#import <CoreLocation/CoreLocation.h>
#import "CLLocationCoordinate2DHandler.h"

extern NSMutableDictionary<NSString *, NSObject *> *STACK;
extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;
extern BOOL enableLog;

void CLLocationCoordinate2DHandler(NSString *method, id rawArgs, FlutterResult methodResult) {
  if ([@"CLLocationCoordinate2D::get_latitude" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    NSValue *dataValue = (NSValue *) args[@"__this__"];

    CLLocationCoordinate2D _structValue;
    [dataValue getValue:&_structValue];

    methodResult(@(_structValue.latitude));
  } else if ([@"CLLocationCoordinate2D::get_longitude" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    NSValue *dataValue = (NSValue *) args[@"__this__"];

    CLLocationCoordinate2D _structValue;
    [dataValue getValue:&_structValue];

    methodResult(@(_structValue.longitude));
  } else if ([@"CLLocationCoordinate2D::get_latitude_batch" isEqualToString:method]) {
    NSArray<NSDictionary<NSString *, id> *> *args = (NSArray<NSDictionary<NSString *, id> *> *) rawArgs;

    NSMutableArray<NSNumber *> *result = [NSMutableArray arrayWithCapacity:args.count];

    for (NSUInteger i = 0; i < args.count; i++) {
      NSValue *dataValue = (NSValue *) args[i][@"__this__"];
      CLLocationCoordinate2D _structValue;
      [dataValue getValue:&_structValue];

      [result addObject:@(_structValue.latitude)];
    }

    methodResult(result);
  } else if ([@"CLLocationCoordinate2D::get_longitude_batch" isEqualToString:method]) {
    NSArray<NSDictionary<NSString *, id> *> *args = (NSArray<NSDictionary<NSString *, id> *> *) rawArgs;

    NSMutableArray<NSNumber *> *result = [NSMutableArray arrayWithCapacity:args.count];

    for (NSUInteger i = 0; i < args.count; i++) {
      NSValue *dataValue = (NSValue *) args[i][@"__this__"];
      CLLocationCoordinate2D _structValue;
      [dataValue getValue:&_structValue];

      [result addObject:@(_structValue.longitude)];
    }

    methodResult(result);
  } else if ([@"CLLocationCoordinate2D::createCLLocationCoordinate2D" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    CLLocationDegrees latitude = [args[@"latitude"] doubleValue];
    CLLocationDegrees longitude = [args[@"longitude"] doubleValue];

    CLLocationCoordinate2D data = CLLocationCoordinate2DMake(latitude, longitude);

    NSValue *dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];

    methodResult(dataValue);
  } else if ([@"CLLocationCoordinate2D::create_batchCLLocationCoordinate2D" isEqualToString:method]) {
    NSDictionary<NSString *, id> *args = (NSDictionary<NSString *, id> *) rawArgs;

    NSArray<NSNumber *> *latitudeBatch = (NSArray<NSNumber *> *) args[@"latitude_batch"];
    NSArray<NSNumber *> *longitudeBatch = (NSArray<NSNumber *> *) args[@"longitude_batch"];

    NSMutableArray<NSObject *> *resultBatch = [NSMutableArray arrayWithCapacity:latitudeBatch.count];
    for (int i = 0; i < latitudeBatch.count; i++) {
      CLLocationDegrees latitude = [latitudeBatch[i] doubleValue];
      CLLocationDegrees longitude = [longitudeBatch[i] doubleValue];

      CLLocationCoordinate2D data = CLLocationCoordinate2DMake(latitude, longitude);

      NSValue *dataValue = [NSValue value:&data withObjCType:@encode(CLLocationCoordinate2D)];
      [resultBatch addObject:dataValue];
    }

    methodResult(resultBatch);
  } else {
    methodResult(FlutterMethodNotImplemented);
  }
}
