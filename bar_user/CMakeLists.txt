cmake_minimum_required(VERSION 3.9)
project(bar_user LANGUAGES C)

find_package(bar REQUIRED)

add_executable(bar_user bar_user.c)
target_link_libraries(bar_user PRIVATE bar::bar)

set_target_properties(bar_user PROPERTIES
    C_STANDARD 11
    C_STANDARD_REQUIRED ON
    C_EXTENSIONS OFF
)

