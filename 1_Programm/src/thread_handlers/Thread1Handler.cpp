#include "../../include/thread_handlers/Thread1Handler.h"

using namespace programm1::threadHandlers;

void Thread1Handler::handle(Buffer& buffer) {
    std::cout << "To finish Programm 1 and Programm 2 input \"q\"" << std::endl;
    std::cout << "To finist only Programm 1 input \"q1\"" << std::endl;
    std::cout << "To finist only Programm 2 input \"q2\"" << std::endl << std::endl;

    std::string inputString;

    while (true) {
        std::cin >> inputString;

        bool isValid { true };

        if (inputString != "q" && inputString != "q1" && inputString != "q2") {
            isValid = validateString(inputString);
            processString(inputString);
        }

        if (isValid) {
            buffer.put(inputString);
        }

        if (inputString == "q" || inputString == "q1") break;
    }
}

bool Thread1Handler::validateString(const std::string& str) {
    if (str.length() > 64) {
        std::cerr << "ERROR : Input string length must be lower or equal than 64\n" << std::endl;

        return false;
    }

    if (!isContainsOnlyDigits(str)) {
        std::cerr << "ERROR : Input string must contains only digits\n" << std::endl;

        return false;
    }

    return true;
}

bool Thread1Handler::isContainsOnlyDigits(const std::string& str) {
    return std::all_of(str.begin(), str.end(), ::isdigit);
}

void Thread1Handler::processString(std::string& str) {
    std::sort(str.rbegin(), str.rend());

    std::regex regExp{R"~~([02468])~~"};
    str = std::move(std::regex_replace(str, regExp, "KB"));
}