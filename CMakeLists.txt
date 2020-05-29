cmake_minimum_required(VERSION 3.17)

# MUST be done before call to 'project'
get_cmake_property(vars CACHE_VARIABLES)
foreach(var ${vars})
  get_property(currentHelpString CACHE "${var}" PROPERTY HELPSTRING)
    if("${currentHelpString}" MATCHES "No help, variable specified on the command line." OR "${currentHelpString}" STREQUAL "")
        # message("${var} = [${${var}}]  --  ${currentHelpString}") # uncomment to see the variables being processed
        list(APPEND CL_ARGS "-D${var}=${${var}}")
    endif()
endforeach()

list(APPEND
    CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake
)

project(monkeypp
    VERSION 0.1.0
    LANGUAGES CXX
)

set(PROJECT_ROOT ${CMAKE_CURRENT_LIST_DIR})

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED true)

include(dependencies)

add_subdirectory(docs)
add_subdirectory(src)
