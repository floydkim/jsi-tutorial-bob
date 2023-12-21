#ifdef __cplusplus
#import "react-native-jsi-tutorial-bob.h"
#endif

#ifdef RCT_NEW_ARCH_ENABLED
#import "RNJsiTutorialBobSpec.h"

@interface JsiTutorialBob : NSObject <NativeJsiTutorialBobSpec>
#else
#import <React/RCTBridgeModule.h>

@interface JsiTutorialBob : NSObject <RCTBridgeModule>
#endif

@end
