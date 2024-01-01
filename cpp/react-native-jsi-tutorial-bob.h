#ifndef JSITUTORIALBOB_H
#define JSITUTORIALBOB_H

#include <jsi/jsi.h>

using namespace facebook;

namespace jsitutorialbob {
  double add(double a, double b);
  void throwJSError(jsi::Runtime &runtime, const std::string &message);
}

#endif /* JSITUTORIALBOB_H */
