# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /opt/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/suchy1713/JIMPREPO/exercices

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/suchy1713/JIMPREPO/exercices/cmake-build-debug

# Include any dependencies generated for this target.
include tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/depend.make

# Include the progress variables for this target.
include tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/flags.make

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o: ../tests/lab3test/CCounterTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/CCounterTest.cpp

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/CCounterTest.cpp > CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.i

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/CCounterTest.cpp -o CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.s

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o


# Object files for target lab3_c_counter_tests
lab3_c_counter_tests_OBJECTS = \
"CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o"

# External object files for target lab3_c_counter_tests
lab3_c_counter_tests_EXTERNAL_OBJECTS =

tests/lab3test/lab3_c_counter_tests: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o
tests/lab3test/lab3_c_counter_tests: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/build.make
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest_main.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/libgmock.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/libgmock_main.a
tests/lab3test/lab3_c_counter_tests: tests/lib/stringutility/libstringutility.a
tests/lab3test/lab3_c_counter_tests: tests/lib/memleak/libmemleak.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest_main.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/libgmock.a
tests/lab3test/lab3_c_counter_tests: tests/lib/gtest-1.8.0/googlemock/libgmock_main.a
tests/lab3test/lab3_c_counter_tests: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lab3_c_counter_tests"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab3_c_counter_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/build: tests/lab3test/lab3_c_counter_tests

.PHONY : tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/build

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/CCounterTest.cpp.o.requires

.PHONY : tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/requires

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/clean:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && $(CMAKE_COMMAND) -P CMakeFiles/lab3_c_counter_tests.dir/cmake_clean.cmake
.PHONY : tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/clean

tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/depend:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suchy1713/JIMPREPO/exercices /home/suchy1713/JIMPREPO/exercices/tests/lab3test /home/suchy1713/JIMPREPO/exercices/cmake-build-debug /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/lab3test/CMakeFiles/lab3_c_counter_tests.dir/depend

