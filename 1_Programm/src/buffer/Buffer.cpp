#include "../../include/buffer/Buffer.h"

using namespace programm1::buffer;

void Buffer::put(const std::string& sendingString) {
    std::unique_lock<std::mutex> lock(mutex_);

    buffer_.push(sendingString);

    conditionalVariable_.notify_one();
}

std::string Buffer::get() {
    std::unique_lock<std::mutex> lock(mutex_);
    conditionalVariable_.wait(lock, [this] { return !buffer_.empty(); });
    
    std::string stringFromBuffer { buffer_.front() };
    buffer_.pop();

    return stringFromBuffer;
}