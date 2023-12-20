

cmake_minimum_required( VERSION 3.28 )
project(
  cppoddeven
  VERSION 0.0.1
  LANGUAGES CXX
  
)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 20)
include(cmake/CPM.cmake)

find_program(SCCACHE_FOUND sccache)
if(SCCACHE_FOUND)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE sccache)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK sccache)
 set(CMAKE_C_COMPILER_LAUNCHER sccache)
 set(CMAKE_CXX_COMPILER_LAUNCHER sccache)
else()
  message(WARNING "sccache not found")
endif()

CPMAddPackage(
  NAME Ccache.cmake
  GITHUB_REPOSITORY TheLartians/Ccache.cmake
  VERSION 1.2
)
find_program(CCACHE_FOUND ccache)
if(CCACHE_FOUND)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
  set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
 set(CMAKE_C_COMPILER_LAUNCHER ccache)
 set(CMAKE_CXX_COMPILER_LAUNCHER ccache)
else()
  message(WARNING "ccache not found")
endif()





file(GLOB_RECURSE SOURCES RELATIVE ${CMAKE_SOURCE_DIR}
  "src/**.cpp"
  "src/**.c"
  "src/**/**.cpp"
  "src/**/**.c"
)

message("Sources: ${SOURCES}")

SET(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS}  -fconstexpr-depth=1200000000")


include_directories($CMAKE_SOURCE_DIR/include)
set(HEADER_DIR $CMAKE_SOURCE_DIR/include)

if(NOT DEFINED RELEASE)
  set(RELEASE 0)
endif()

add_executable(cppoddeven ${SOURCES})

if (CMAKE_BUILD_TYPE STREQUAL "Release")
  set_target_properties(cppoddeven PROPERTIES COMPILE_FLAGS "${CMAKE_CXX_FLAGS} -O2 ")
endif()
if (CMAKE_BUILD_TYPE STREQUAL "Debug")
  set_target_properties(cppoddeven PROPERTIES COMPILE_FLAGS "${CMAKE_CXX_FLAGS} -g")
endif()
if (CMAKE_BUILD_TYPE STREQUAL "Test")
  set_target_properties(cppoddeven PROPERTIES COMPILE_FLAGS "${CMAKE_CXX_FLAGS} -g")
endif()


set(BUILD_DIR build)
set_target_properties(cppoddeven PROPERTIES RUNTIME_OUTPUT_DIRECTORY build)



install(TARGETS cppoddeven DESTINATION bin)


