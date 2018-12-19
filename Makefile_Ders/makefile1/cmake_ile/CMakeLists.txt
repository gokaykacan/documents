cmake_minimum_required(VERSION 2.8.9)
project (HelloMake)
set(CMAKE_BUILD_TYPE Release)

#Bring the headers, such as Student.h into the project
include_directories(include)

file(GLOB SOURCES "src/*.c")

#Generate the shared library from the sources
add_library(helloMake SHARED ${SOURCES})

#add_executable(helloMake ${SOURCES})

