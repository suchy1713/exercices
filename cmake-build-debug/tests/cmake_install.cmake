# Install script for directory: /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/tests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lib/gtest-1.8.0/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lib/stringutility/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lib/memleak/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab1test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab2test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab3test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab4test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab5test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab6test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab7test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab8test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab9test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab10test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab11test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab12test/cmake_install.cmake")
  include("/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/tests/lab13test/cmake_install.cmake")

endif()

