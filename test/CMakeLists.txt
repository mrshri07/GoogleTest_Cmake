cmake_minimum_required(VERSION 3.8)

set(This ExampleTests)

set(Sources
   test/ExampleTests.cpp
)

add_executable(${This} ${Sources})

target_include_directories(${This} PRIVATE
    ${CMAKE_SOURCE_DIR}/src
)

target_link_libraries(${This} PUBLIC
    gtest_main
    Example
)

add_test(
    NAME ${This}
    COMMAND ${This}  
)

