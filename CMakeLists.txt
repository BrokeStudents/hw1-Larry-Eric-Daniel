cmake_minimum_required(VERSION 3.15)
project(hw1-Larry-Eric-Daniel)

set(CMAKE_CXX_STANDARD 17)

# Set the build output location to a common directory
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/output)

add_subdirectory(OpenXLSX)

add_executable(hw1-Larry-Eric-Daniel main.cpp)
target_link_libraries(hw1-Larry-Eric-Daniel OpenXLSX::OpenXLSX)