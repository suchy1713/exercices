# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/clion-2018.1.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/clion-2018.1.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/students/d/dolawojc/jimp2/suchy/exercices

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug

# Include any dependencies generated for this target.
include tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/depend.make

# Include the progress variables for this target.
include tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/flags.make

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/flags.make
tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o: ../tests/lab7test/IterableProductTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o -c /home/students/d/dolawojc/jimp2/suchy/exercices/tests/lab7test/IterableProductTest.cpp

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.i"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/d/dolawojc/jimp2/suchy/exercices/tests/lab7test/IterableProductTest.cpp > CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.i

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.s"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/d/dolawojc/jimp2/suchy/exercices/tests/lab7test/IterableProductTest.cpp -o CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.s

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.requires:

.PHONY : tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.requires

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.provides: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.requires
	$(MAKE) -f tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/build.make tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.provides.build
.PHONY : tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.provides

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.provides.build: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o


# Object files for target lab7_iterable_product_tests
lab7_iterable_product_tests_OBJECTS = \
"CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o"

# External object files for target lab7_iterable_product_tests
lab7_iterable_product_tests_EXTERNAL_OBJECTS =

tests/lab7test/lab7_iterable_product_tests: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o
tests/lab7test/lab7_iterable_product_tests: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/build.make
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest_main.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/libgmock.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/libgmock_main.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/stringutility/libstringutility.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/memleak/libmemleak.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest_main.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/libgmock.a
tests/lab7test/lab7_iterable_product_tests: tests/lib/gtest-1.8.0/googlemock/libgmock_main.a
tests/lab7test/lab7_iterable_product_tests: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab7_iterable_product_tests"
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab7_iterable_product_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/build: tests/lab7test/lab7_iterable_product_tests

.PHONY : tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/build

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/requires: tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/IterableProductTest.cpp.o.requires

.PHONY : tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/requires

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/clean:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test && $(CMAKE_COMMAND) -P CMakeFiles/lab7_iterable_product_tests.dir/cmake_clean.cmake
.PHONY : tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/clean

tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/depend:
	cd /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/students/d/dolawojc/jimp2/suchy/exercices /home/students/d/dolawojc/jimp2/suchy/exercices/tests/lab7test /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test /home/students/d/dolawojc/jimp2/suchy/exercices/cmake-build-debug/tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/lab7test/CMakeFiles/lab7_iterable_product_tests.dir/depend

