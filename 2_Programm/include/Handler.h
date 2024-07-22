#ifndef _HANDLER_H_
#define _HANDLER_H_

#include <cstring>
#include <exception>
#include <iostream>
#include <netinet/in.h>
#include <stdexcept>
#include <string>
#include <unistd.h>

#define PORT 8080
#define PROTOCOL 0

namespace programm2::handler {

class Handler {
  public:
    static void handle();

  private:
    static void processReceivedData(const std::string& str);
};

} // programm2::handler

#endif // _HANDLER_H_