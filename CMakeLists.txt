
cmake_minimum_required(VERSION 3.23 FATAL_ERROR)

project(BuildCPlusProject CXX)

set(SOURCE_FILES src/main.cpp)
file(GLOB MATCH_FILES src/STL_prac/*.cpp)
list(APPEND SOURCE_FILES ${MATCH_FILES})

add_executable(BuildCPlusProject src/main.cpp)