cmake_minimum_required(VERSION 3.10)
project(Programm2)

add_compile_options(-Wall -O -g)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)
set(INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/include)

include_directories(${INCLUDE_DIR})

file(GLOB_RECURSE SOURCES LIST_DIRECTORIES false ${SOURCE_DIR}/*.cpp)
file(GLOB_RECURSE INCLUDES LIST_DIRECTORIES false ${INCLUDE_DIR}/*.hpp)

add_library(
            ${CMAKE_PROJECT_NAME}_lib
            ${SOURCES}
            ${INCLUDES}
            )

add_executable(
               ${CMAKE_PROJECT_NAME}_exe
               ${CMAKE_CURRENT_SOURCE_DIR}/run.cpp
               ) 
               
set_target_properties(
                      ${PROJECT_NAME}_exe PROPERTIES
                      CXX_STANDARD 23
                      CXX_STANDARD_REQUIRED YES
                      CXX_EXTENSIONS NO
                      ) 

add_dependencies(${CMAKE_PROJECT_NAME}_exe ${CMAKE_PROJECT_NAME}_lib)
target_link_libraries(${CMAKE_PROJECT_NAME}_exe ${CMAKE_PROJECT_NAME}_lib)