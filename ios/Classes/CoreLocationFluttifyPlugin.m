#import "CoreLocationFluttifyPlugin.h"
#import "CLLocationCoordinate2DHandler.h"
#import "CLLocationHandler.h"
#import "CLFloorHandler.h"
#import "CLLocationManagerHandler.h"
#import "CLHeadingHandler.h"

// Container for Dart side random access objects
extern NSMutableDictionary<NSNumber *, NSObject *> *HEAP;

// whether enable log or not
extern BOOL enableLog;

@implementation CoreLocationFluttifyPlugin {
    NSObject <FlutterPluginRegistrar> *_registrar;
}

+ (void)registerWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
    NSString* _channelName = @"com.fluttify/core_location_method";
    
    FlutterMethodChannel *channel = [FlutterMethodChannel
                                     methodChannelWithName:_channelName
                                     binaryMessenger:[registrar messenger]];
    CoreLocationFluttifyPlugin *instance = [[CoreLocationFluttifyPlugin alloc] initWithRegistrar:registrar];
    [registrar addMethodCallDelegate:instance channel:channel];
}

- (instancetype)initWithRegistrar:(NSObject <FlutterPluginRegistrar> *)registrar {
    self = [super init];
    if (self) {
        _registrar = registrar;
    }
    return self;
}

- (void)handleMethodCall:(FlutterMethodCall *)methodCall result:(FlutterResult)methodResult {
    id rawArgs = [methodCall arguments];
    if ([methodCall.method hasPrefix:@"CLLocationCoordinate2D"]) {
        CLLocationCoordinate2DHandler(methodCall.method, rawArgs, methodResult);
    } else if ([methodCall.method hasPrefix:@"CLLocation"]) {
        CLLocationHandler(methodCall.method, rawArgs, methodResult);
    } else if ([methodCall.method hasPrefix:@"CLFloor"]) {
        CLFloorHandler(methodCall.method, rawArgs, methodResult);
    } else if ([methodCall.method hasPrefix:@"CLLocationManager"]) {
        CLLocationManagerHandler(methodCall.method, rawArgs, methodResult);
    } else if ([methodCall.method hasPrefix:@"CLHeadingHandler"]) {
        CLHeadingHandler(methodCall.method, rawArgs, methodResult);
    } else {
        methodResult(FlutterMethodNotImplemented);
    }
}

@end
