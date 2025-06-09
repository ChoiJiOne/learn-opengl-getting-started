cmake_minimum_required(VERSION 3.27)

set(HELLO_WINDOW_01_PATH "02.HelloWindow-01")

set(HELLO_WINDOW_01 "02.HelloWindow-01")

add_subdirectory(${HELLO_WINDOW_01_PATH})

set_target_properties(
    ${HELLO_WINDOW_01}
    PROPERTIES FOLDER "02.HelloWindow"
)