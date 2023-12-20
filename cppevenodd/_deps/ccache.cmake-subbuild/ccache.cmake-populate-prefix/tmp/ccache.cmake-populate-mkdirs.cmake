# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-src"
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-build"
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix"
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix/tmp"
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix/src/ccache.cmake-populate-stamp"
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix/src"
  "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix/src/ccache.cmake-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix/src/ccache.cmake-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/deastl/repos/other-peoples-shit/notNotOdd/cppevenodd/_deps/ccache.cmake-subbuild/ccache.cmake-populate-prefix/src/ccache.cmake-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
