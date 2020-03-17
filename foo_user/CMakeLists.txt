cmake_minimum_required(VERSION 3.9)
project(foo_user LANGUAGES C)

find_package(foo REQUIRED)

add_executable(foo_user foo_user.c)
target_link_libraries(foo_user PRIVATE foo::foo)

set_target_properties(foo_user PROPERTIES
    C_STANDARD 11
    C_STANDARD_REQUIRED ON
    C_EXTENSIONS OFF
)

