#import "JsiTutorialBob.h"
#include "react-native-jsi-tutorial-bob.h" // Include the C++ header

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

// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeJsiTutorialBobSpecJSI>(params);
}
#endif

@end
