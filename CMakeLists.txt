cmake_minimum_required(VERSION 3.27)

project(LearnOpenGL)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

if (MSVC)
    add_compile_options("/wd4819")
endif()

add_subdirectory(ThirdParty)

set(HELLO_WINDOW "02.HelloWindow")
set(HELLO_TRIANGLE "03.HelloTriangle")
set(SHADERS "04.Shaders")
set(TEXTURES "05.Textures")
set(TRANSFORMATIONS "06.Transformations")
set(COORDINATE_SYSTEMS "07.CoordinateSystems")
set(CAMERA "08.Camera")

add_subdirectory(${HELLO_WINDOW})
# add_subdirectory(${HELLO_TRIANGLE})
# add_subdirectory(${SHADERS})
# add_subdirectory(${TEXTURES})
# add_subdirectory(${TRANSFORMATIONS})
# add_subdirectory(${COORDINATE_SYSTEMS})
# add_subdirectory(${CAMERA})