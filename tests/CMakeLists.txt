cmake_minimum_required(VERSION 3.17)

set(SOURCES
    testmain.cpp
    catch2demo.cpp
)

add_executable(monkeypp-tests
    ${SOURCES}
)

target_link_libraries(monkeypp-tests
    Catch2::Catch2
)

include(CTest)
include(Catch)
catch_discover_tests(monkeypp-tests)
