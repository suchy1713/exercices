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
include tests/lab3test/CMakeFiles/lab3_all_tests.dir/depend.make

# Include the progress variables for this target.
include tests/lab3test/CMakeFiles/lab3_all_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make

tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o: ../tests/lab3test/MinimalTimeDifferenceTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/MinimalTimeDifferenceTest.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/MinimalTimeDifferenceTest.cpp > CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/MinimalTimeDifferenceTest.cpp -o CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o: ../tests/lab3test/CCounterTest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/CCounterTest.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/CCounterTest.cpp > CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/CCounterTest.cpp -o CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o: ../tests/lab3test/TinyUrlStep2Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/TinyUrlStep2Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/TinyUrlStep2Test.cpp > CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/TinyUrlStep2Test.cpp -o CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o: ../tests/lab3test/TinyUrlStep1Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/TinyUrlStep1Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/TinyUrlStep1Test.cpp > CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/TinyUrlStep1Test.cpp -o CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o: ../tests/lab3test/SmartTreeStep5Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep5Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep5Test.cpp > CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep5Test.cpp -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o: ../tests/lab3test/SmartTreeStep4Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep4Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep4Test.cpp > CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep4Test.cpp -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o: ../tests/lab3test/SmartTreeStep3Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep3Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep3Test.cpp > CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep3Test.cpp -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o: ../tests/lab3test/SmartTreeStep2Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep2Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep2Test.cpp > CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep2Test.cpp -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o


tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o: tests/lab3test/CMakeFiles/lab3_all_tests.dir/flags.make
tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o: ../tests/lab3test/SmartTreeStep1Test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o -c /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep1Test.cpp

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.i"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep1Test.cpp > CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.i

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.s"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/suchy1713/JIMPREPO/exercices/tests/lab3test/SmartTreeStep1Test.cpp -o CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.s

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.requires:

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.provides: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.requires
	$(MAKE) -f tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.provides.build
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.provides

tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.provides.build: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o


# Object files for target lab3_all_tests
lab3_all_tests_OBJECTS = \
"CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o" \
"CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o"

# External object files for target lab3_all_tests
lab3_all_tests_EXTERNAL_OBJECTS =

tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/build.make
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest_main.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/libgmock.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/libgmock_main.a
tests/lab3test/lab3_all_tests: lab3/smarttree/liblibsmarttree.a
tests/lab3test/lab3_all_tests: lab3/tinyurl/liblibtinyurl.a
tests/lab3test/lab3_all_tests: lab3/minimaltimedifference/liblibminimaltimedifference.a
tests/lab3test/lab3_all_tests: tests/lib/stringutility/libstringutility.a
tests/lab3test/lab3_all_tests: tests/lib/memleak/libmemleak.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest_main.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/gtest/libgtest.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/libgmock.a
tests/lab3test/lab3_all_tests: tests/lib/gtest-1.8.0/googlemock/libgmock_main.a
tests/lab3test/lab3_all_tests: tests/lab3test/CMakeFiles/lab3_all_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/suchy1713/JIMPREPO/exercices/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable lab3_all_tests"
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab3_all_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/lab3test/CMakeFiles/lab3_all_tests.dir/build: tests/lab3test/lab3_all_tests

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/build

tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/MinimalTimeDifferenceTest.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/CCounterTest.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep2Test.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/TinyUrlStep1Test.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep5Test.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep4Test.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep3Test.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep2Test.cpp.o.requires
tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires: tests/lab3test/CMakeFiles/lab3_all_tests.dir/SmartTreeStep1Test.cpp.o.requires

.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/requires

tests/lab3test/CMakeFiles/lab3_all_tests.dir/clean:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test && $(CMAKE_COMMAND) -P CMakeFiles/lab3_all_tests.dir/cmake_clean.cmake
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/clean

tests/lab3test/CMakeFiles/lab3_all_tests.dir/depend:
	cd /home/suchy1713/JIMPREPO/exercices/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/suchy1713/JIMPREPO/exercices /home/suchy1713/JIMPREPO/exercices/tests/lab3test /home/suchy1713/JIMPREPO/exercices/cmake-build-debug /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test /home/suchy1713/JIMPREPO/exercices/cmake-build-debug/tests/lab3test/CMakeFiles/lab3_all_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/lab3test/CMakeFiles/lab3_all_tests.dir/depend

