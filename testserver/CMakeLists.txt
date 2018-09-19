cmake_minimum_required (VERSION 3.1)

project (testserver)

# set(CMAKE_BUILD_TYPE "Release")
set(CMAKE_BUILD_TYPE "Debug")

set(CMAKE_CXX_STANDARD 11)

add_executable(testserver
    src/main.cpp
)

target_link_libraries(testserver pistache pthread)
