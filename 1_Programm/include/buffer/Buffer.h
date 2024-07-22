#ifndef _BUFFER_H_
#define _BUFFER_H_

#include <condition_variable>
#include <iostream>
#include <mutex>
#include <queue>
#include <string>

namespace programm1::buffer {

class Buffer {
  public:
    Buffer() = default;

    void put(const std::string& sendingString);
    std::string get();

    ~Buffer() = default;

  private:
    std::queue<std::string> buffer_;
    std::mutex mutex_;
    std::condition_variable conditionalVariable_;
};

} // programm1::buffer

#endif // _BUFFER_H