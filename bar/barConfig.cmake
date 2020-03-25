include(CMakeFindDependencyMacro)
find_dependency(foo REQUIRED)
include("${CMAKE_CURRENT_LIST_DIR}/barPrivateConfig.cmake")
