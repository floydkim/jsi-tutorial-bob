#include <jni.h>
#include "react-native-jsi-tutorial-bob.h"

extern "C"
JNIEXPORT jdouble JNICALL
Java_com_jsitutorialbob_JsiTutorialBobModule_nativeAdd(JNIEnv *env, jclass type, jdouble a, jdouble b) {
    return jsitutorialbob::add(a, b);
}
