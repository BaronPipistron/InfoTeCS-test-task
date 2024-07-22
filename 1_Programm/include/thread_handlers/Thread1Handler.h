#ifndef _THREAD_1_HANDLER_H_
#define _THREAD_1_HANDLER_H_

#include <algorithm>
#include <iostream>
#include <regex>
#include <stdexcept>
#include <string>

#include "../buffer/Buffer.h"

using namespace programm1::buffer;

namespace programm1::threadHandlers {

class Thread1Handler {
  public:
    static void handle(Buffer& buffer);

  private:
    static bool validateString(const std::string& str);
    static bool isContainsOnlyDigits(const std::string& str);
    static void processString(std::string& str);
};

} // programm1::threadHandlers

#endif // _THREAD_1_HANDLER_H_