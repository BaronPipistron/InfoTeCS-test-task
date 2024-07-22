#include "../include/Handler.h"

using namespace programm2::handler;

void Handler::handle() {
    int serverSocket = socket(AF_INET, SOCK_STREAM, PROTOCOL);

    if (serverSocket < 0) {
        std::cerr << "ERROR : Cannot creating socket\n" << std::endl;

        return;
    }

    struct sockaddr_in serverAddress;
    serverAddress.sin_family = AF_INET;
    serverAddress.sin_port = htons(PORT);
    serverAddress.sin_addr.s_addr = htonl(INADDR_ANY);

    int opt = 1;
    if (setsockopt(serverSocket, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt)) < 0) {
        std::cerr << "ERROR : Cannot setting socket options\n" << std::endl;

        close(serverSocket);
        return;
    }

    if (bind(serverSocket, (struct sockaddr*)&serverAddress, sizeof(serverAddress)) < 0) {
        std::cerr << "ERROR : Cannot binding socket\n" << std::endl;

        close(serverSocket);
        return;
    }

    if (listen(serverSocket, 1) < 0) {
        std::cerr << "ERROR : Cannot listening on socket\n" << std::endl;

        close(serverSocket);
        return;
    }

    while (true) {
        int client_socket = accept(serverSocket, NULL, NULL);

        if (client_socket < 0) {
            std::cerr << "ERROR : Cannot accepting connection\n" << std::endl;

            close(serverSocket);
            return;
        }

        char buffer[1024];
        ssize_t bytes_received = recv(client_socket, buffer, sizeof(buffer) - 1, 0);

        if (bytes_received == -1) {
            std::cerr << "ERROR : Cannot receiving data\n" << std::endl;

            close(client_socket);
            close(serverSocket);

            return;
        }

        buffer[bytes_received] = '\0';
        std::string receivedMessage(buffer);

        if (receivedMessage == "q" || receivedMessage == "q2") {
            close(client_socket);
            break;
        }

        processReceivedData(receivedMessage);

        close(client_socket);
    }

    close(serverSocket);
}

void Handler::processReceivedData(const std::string& str) {
    size_t strLength = str.length();

    if (strLength > 2 && std::stoi(str) % 32 == 0) {
        std::cout << "Data from Programm 1 received \nReceived data : " << str << std::endl << std::endl;
    } else {
        std::cerr << "Data from Programm 1 received \n" << 
                     "ERROR : Received data from Programm 1 must be greater 2 symbols and multiple of 32\n" << std::endl;
    }
}