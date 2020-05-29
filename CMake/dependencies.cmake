# CMake native packages
include(FetchContent)

FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt.git
    GIT_TAG 6.1.2
)

FetchContent_Declare(
    range-v3
    GIT_REPOSITORY https://github.com/ericniebler/range-v3.git
    GIT_TAG 0.10.0
)

FetchContent_Declare(
    catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG v2.11.1
)

FetchContent_Declare(
    fakeit
    GIT_REPOSITORY https://github.com/eranpeer/FakeIt.git
    GIT_TAG 814f28cd509ef2a8cdf7fe370bd9ec6d3b181dc7
)

FetchContent_MakeAvailable(
    catch2
    fakeit
    fmt
    range-v3
)
