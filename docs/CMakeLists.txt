cmake_minimum_required(VERSION 3.17)

find_package(Sphinx REQUIRED)

if(NOT DEFINED SPHINX_THEME)
    set(SPHINX_THEME sphinx_rtd_theme)
endif()
 
if(NOT DEFINED SPHINX_THEME_DIR)
    set(SPHINX_THEME_DIR)
endif()
 
# configured documentation tools and intermediate build results
set(BINARY_BUILD_DIR "${CMAKE_CURRENT_BINARY_DIR}/_build")
 
# Sphinx cache with pickled ReST documents
set(SPHINX_CACHE_DIR "${CMAKE_CURRENT_BINARY_DIR}/_doctrees")
 
# HTML output directory
set(SPHINX_HTML_DIR "${CMAKE_CURRENT_BINARY_DIR}/html")
 
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/source/conf.py.in"
    "${BINARY_BUILD_DIR}/conf.py"
    @ONLY
)
 
add_custom_target(databroker_docs ALL
    ${SPHINX_EXECUTABLE}
        -q -b html
        -c "${BINARY_BUILD_DIR}"
        -d "${SPHINX_CACHE_DIR}"
        "${CMAKE_CURRENT_SOURCE_DIR}/source"
        "${SPHINX_HTML_DIR}"
    COMMENT "Building HTML documentation with Sphinx"
)
