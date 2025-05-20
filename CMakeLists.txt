cmake_minimum_required(VERSION 3.8)

set(This Example)

project(${This} C CXX )

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

enable_testing()

//add_subdirectory(googletest)
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/refs/heads/main.zip
)
FetchContent_MakeAvailable(googletest)


set(Headers
    Example.hpp
)
set(Sources
    Example.cpp
)

set  (Sources
	mirror_selection.cpp
	)
	
set  (Sources
	mirror_control.cpp
)

add_library(${This} STATIC ${Sources} ${Headers})

add_subdirectory(test)

