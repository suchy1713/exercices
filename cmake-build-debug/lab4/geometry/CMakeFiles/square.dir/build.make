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
CMAKE_SOURCE_DIR = /home/students/w/wawrpiot/jimp2/cwiczenia/exercises

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug

# Include any dependencies generated for this target.
include lab4/geometry/CMakeFiles/square.dir/depend.make

# Include the progress variables for this target.
include lab4/geometry/CMakeFiles/square.dir/progress.make

# Include the compile flags for this target's objects.
include lab4/geometry/CMakeFiles/square.dir/flags.make

lab4/geometry/CMakeFiles/square.dir/Square.cpp.o: lab4/geometry/CMakeFiles/square.dir/flags.make
lab4/geometry/CMakeFiles/square.dir/Square.cpp.o: ../lab4/geometry/Square.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lab4/geometry/CMakeFiles/square.dir/Square.cpp.o"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/square.dir/Square.cpp.o -c /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/Square.cpp

lab4/geometry/CMakeFiles/square.dir/Square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/square.dir/Square.cpp.i"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/Square.cpp > CMakeFiles/square.dir/Square.cpp.i

lab4/geometry/CMakeFiles/square.dir/Square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/square.dir/Square.cpp.s"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/Square.cpp -o CMakeFiles/square.dir/Square.cpp.s

lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.requires:

.PHONY : lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.requires

lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.provides: lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.requires
	$(MAKE) -f lab4/geometry/CMakeFiles/square.dir/build.make lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.provides.build
.PHONY : lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.provides

lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.provides.build: lab4/geometry/CMakeFiles/square.dir/Square.cpp.o


lab4/geometry/CMakeFiles/square.dir/Point.cpp.o: lab4/geometry/CMakeFiles/square.dir/flags.make
lab4/geometry/CMakeFiles/square.dir/Point.cpp.o: ../lab4/geometry/Point.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lab4/geometry/CMakeFiles/square.dir/Point.cpp.o"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/square.dir/Point.cpp.o -c /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/Point.cpp

lab4/geometry/CMakeFiles/square.dir/Point.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/square.dir/Point.cpp.i"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/Point.cpp > CMakeFiles/square.dir/Point.cpp.i

lab4/geometry/CMakeFiles/square.dir/Point.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/square.dir/Point.cpp.s"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/Point.cpp -o CMakeFiles/square.dir/Point.cpp.s

lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.requires:

.PHONY : lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.requires

lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.provides: lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.requires
	$(MAKE) -f lab4/geometry/CMakeFiles/square.dir/build.make lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.provides.build
.PHONY : lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.provides

lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.provides.build: lab4/geometry/CMakeFiles/square.dir/Point.cpp.o


lab4/geometry/CMakeFiles/square.dir/main.cpp.o: lab4/geometry/CMakeFiles/square.dir/flags.make
lab4/geometry/CMakeFiles/square.dir/main.cpp.o: ../lab4/geometry/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lab4/geometry/CMakeFiles/square.dir/main.cpp.o"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/square.dir/main.cpp.o -c /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/main.cpp

lab4/geometry/CMakeFiles/square.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/square.dir/main.cpp.i"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/main.cpp > CMakeFiles/square.dir/main.cpp.i

lab4/geometry/CMakeFiles/square.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/square.dir/main.cpp.s"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry/main.cpp -o CMakeFiles/square.dir/main.cpp.s

lab4/geometry/CMakeFiles/square.dir/main.cpp.o.requires:

.PHONY : lab4/geometry/CMakeFiles/square.dir/main.cpp.o.requires

lab4/geometry/CMakeFiles/square.dir/main.cpp.o.provides: lab4/geometry/CMakeFiles/square.dir/main.cpp.o.requires
	$(MAKE) -f lab4/geometry/CMakeFiles/square.dir/build.make lab4/geometry/CMakeFiles/square.dir/main.cpp.o.provides.build
.PHONY : lab4/geometry/CMakeFiles/square.dir/main.cpp.o.provides

lab4/geometry/CMakeFiles/square.dir/main.cpp.o.provides.build: lab4/geometry/CMakeFiles/square.dir/main.cpp.o


# Object files for target square
square_OBJECTS = \
"CMakeFiles/square.dir/Square.cpp.o" \
"CMakeFiles/square.dir/Point.cpp.o" \
"CMakeFiles/square.dir/main.cpp.o"

# External object files for target square
square_EXTERNAL_OBJECTS =

lab4/geometry/square: lab4/geometry/CMakeFiles/square.dir/Square.cpp.o
lab4/geometry/square: lab4/geometry/CMakeFiles/square.dir/Point.cpp.o
lab4/geometry/square: lab4/geometry/CMakeFiles/square.dir/main.cpp.o
lab4/geometry/square: lab4/geometry/CMakeFiles/square.dir/build.make
lab4/geometry/square: lab4/geometry/liblibsquare.a
lab4/geometry/square: lab4/geometry/CMakeFiles/square.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable square"
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/square.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lab4/geometry/CMakeFiles/square.dir/build: lab4/geometry/square

.PHONY : lab4/geometry/CMakeFiles/square.dir/build

lab4/geometry/CMakeFiles/square.dir/requires: lab4/geometry/CMakeFiles/square.dir/Square.cpp.o.requires
lab4/geometry/CMakeFiles/square.dir/requires: lab4/geometry/CMakeFiles/square.dir/Point.cpp.o.requires
lab4/geometry/CMakeFiles/square.dir/requires: lab4/geometry/CMakeFiles/square.dir/main.cpp.o.requires

.PHONY : lab4/geometry/CMakeFiles/square.dir/requires

lab4/geometry/CMakeFiles/square.dir/clean:
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry && $(CMAKE_COMMAND) -P CMakeFiles/square.dir/cmake_clean.cmake
.PHONY : lab4/geometry/CMakeFiles/square.dir/clean

lab4/geometry/CMakeFiles/square.dir/depend:
	cd /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/students/w/wawrpiot/jimp2/cwiczenia/exercises /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/lab4/geometry /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry /home/students/w/wawrpiot/jimp2/cwiczenia/exercises/cmake-build-debug/lab4/geometry/CMakeFiles/square.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lab4/geometry/CMakeFiles/square.dir/depend
