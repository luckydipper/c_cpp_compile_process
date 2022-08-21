# Cmake minimum version
cmake_minimum_required(VERSION 3.11)

# Project information
project(
    LuckydipperCode  # essential
    VERSION 0.1
    DESCRIPTION "Cmake practice project"
    LANGUAGES CXX) #CUDA OBJC OBJCXX Fortran 등등 가능

add_executable (program main.cpp foo.cpp)

# warning을 모두 표시한다. warningㅇ르 error로 취급한다.
# PUBLIC 말고도 INTERFACE 와 PRIVATE
target_compile_options(program PUBLIC -Wall -Werror)

#CMAKE_SOURCE_DIR는 CMakeLists.txt의 위치
target_include_directories(program PUBLIC ${CMAKE_SOURCE_DIR}/includes)
