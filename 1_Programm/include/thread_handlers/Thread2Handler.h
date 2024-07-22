#ifndef _THREAD_2_HANDLER_H_
#define _THREAD_2_HANDLER_H_

#include <algorithm>
#include <cstdint>
#include <cstring>
#include <exception>
#include <iostream>
#include <netinet/in.h>
#include <regex>
#include <stdexcept>
#include <string>
#include <unistd.h>

#include "../buffer/Buffer.h"

#define PORT 8080
#define PROTOCOL 0

using namespace programm1::buffer;

namespace programm1::threadHandlers {

class Thread2Handler {
  public:
    static void handle(Buffer& buffer);

  private:
    static std::string calculateSum(const std::string& str);
    static void sendToProgramm2(const std::string& str);
};

} // programm1::threadHandlers

#endif // _THREAD_2_HANDLER_H_