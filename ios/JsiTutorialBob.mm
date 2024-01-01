#import "JsiTutorialBob.h"
#include "react-native-jsi-tutorial-bob.h" // Include the C++ header
//#import <React/RCTBridgeModule.h>
//#import <React/RCTBridge+Private.h>

@implementation JsiTutorialBob
RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
// RCT_EXPORT_METHOD(multiply:(double)a
//                   b:(double)b
//                   resolve:(RCTPromiseResolveBlock)resolve
//                   reject:(RCTPromiseRejectBlock)reject)
// {
//     NSNumber *result = @(jsitutorialbob::multiply(a, b));
//
//     resolve(result);
// }
RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(add:(double)a b:(double)b) {
    return @(jsitutorialbob::add(a, b)); // Call the C++ function
}

RCT_EXPORT_BLOCKING_SYNCHRONOUS_METHOD(getDeviceModel)
{
    @try {
        NSString *deviceModel = [UIDevice currentDevice].model;
        return deviceModel;
    } @catch (NSException *exception) {
//        JS 런타임을 가져오는 방법을 모르겠음.
//        jsi::Runtime& runtime = _bridge.jsCallInvoker->jsRuntime();
//        jsitutorialbob::throwJSError(runtime, std::string([exception.reason UTF8String]));
        return @"unknown";
    }
}


// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeJsiTutorialBobSpecJSI>(params);
}
#endif

@end
