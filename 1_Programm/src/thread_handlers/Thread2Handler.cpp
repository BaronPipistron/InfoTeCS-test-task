#include "../../include/thread_handlers/Thread2Handler.h"

using namespace programm1::threadHandlers;

void Thread2Handler::handle(Buffer& buffer) {
    std::string inputString;

    while (true) {
        inputString = buffer.get();
        
        if (inputString == "q") {
            sendToProgramm2(inputString);
            break;
        }

        if (inputString == "q1") break;

        if (inputString != "q2") {
            std::cout << inputString << std::endl << std::endl;
        }

        std::string stringDigitsSum = (inputString == "q2") ? inputString : calculateSum(inputString);

        sendToProgramm2(stringDigitsSum);
    }

}

std::string Thread2Handler::calculateSum(const std::string& str) {
    uint32_t sum { 0 };

    for (const char c : str) {
        if (c >= '0' && c <= '9') {
            sum += (c - '0');
        }
    }

    return std::to_string(sum);
}

void Thread2Handler::sendToProgramm2(const std::string& str) {
    int clientSocket = socket(AF_INET, SOCK_STREAM, PROTOCOL);

    if (clientSocket == -1) {
        std::cerr << "ERROR : Cannot create client socket\n" << std::endl;

        return;
    }

    struct sockaddr_in serverAddress;
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(PORT);
    serverAddress.sin_addr.s_addr = htonl(INADDR_ANY);

    if (connect(clientSocket, (struct sockaddr*)&serverAddress, sizeof(serverAddress)) < 0) {
        std::cerr << "ERROR : Cannot connect to client socket\n" << std::endl;

        close(clientSocket);
        return;
    }

    if (send(clientSocket, str.c_str(), str.length(), 0) < 0) {
        std::cerr << "ERROR : Cannot send message to client socket\n" << std::endl;

        close(clientSocket);
        return;
    }

    close(clientSocket);
}