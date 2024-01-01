#include "react-native-jsi-tutorial-bob.h"
#include <jsi/jsi.h>

using namespace facebook;

namespace jsitutorialbob {
	double add(double a, double b) {
		return a + b;
	}

    void throwJSError(jsi::Runtime &runtime, const std::string &message) {
        throw jsi::JSError(runtime, message);
    }
}
