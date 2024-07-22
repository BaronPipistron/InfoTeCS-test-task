#include <functional>
#include <iostream>
#include <thread>

#include "include/thread_handlers/Thread1Handler.h"
#include "include/thread_handlers/Thread2Handler.h"
#include "include/buffer/Buffer.h"

using namespace programm1::threadHandlers;
using namespace programm1::buffer;

int main() {
    Buffer buffer;

    std::thread thread_1(Thread1Handler::handle, std::ref(buffer));
    std::thread thread_2(Thread2Handler::handle, std::ref(buffer)); 

    thread_1.join();
    thread_2.join();

    return 0;
}