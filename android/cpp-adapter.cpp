#include <jni.h>
#include "react-native-jsi-tutorial-bob.h"

extern "C"
JNIEXPORT jdouble JNICALL
Java_com_jsitutorialbob_JsiTutorialBobModule_nativeMultiply(JNIEnv *env, jclass type, jdouble a, jdouble b) {
    return jsitutorialbob::multiply(a, b);
}
